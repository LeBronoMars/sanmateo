package pusher

import (
	"net/url"
	"strings"
)

const authVersion = "1.0"

func unsignedParams(key, timestamp string, body []byte, additionalQueries map[string]string) url.Values {
	params := url.Values{
		"auth_key":       {key},
		"auth_timestamp": {timestamp},
		"auth_version":   {authVersion},
	}

	if body != nil {
		params.Add("body_md5", md5Signature(body))
	}

	if additionalQueries != nil {
		for key, values := range additionalQueries {
			params.Add(key, values)
		}
	}

	return params

}

func unescapeUrl(_url url.Values) string {
	unesc, _ := url.QueryUnescape(_url.Encode())
	return unesc
}

func createRequestUrl(method, host, path, key, secret, timestamp string, secure bool, body []byte, additionalQueries map[string]string, cluster string) string {
	params := unsignedParams(key, timestamp, body, additionalQueries)

	stringToSign := strings.Join([]string{method, path, unescapeUrl(params)}, "\n")

	authSignature := hmacSignature(stringToSign, secret)

	params.Add("auth_signature", authSignature)

	if host == "" {
		if cluster != "" {
			host = "api-" + cluster + ".pusher.com"
		} else {
			host = "api.pusherapp.com"
		}
	}
	var base string
	if secure {
		base = "https://"
	} else {
		base = "http://"
	}
	base += host

	endpoint, err := url.Parse(base + path)
	if err != nil {
		panic("logic error: " + err.Error())
	}
	endpoint.RawQuery = unescapeUrl(params)

	return endpoint.String()
}
