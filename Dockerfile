FROM alpine

LABEL "com.github.actions.name"="Github Action for curl"
LABEL "com.github.actions.description"="Wraps the curl CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="download-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/wei/curl"
LABEL "homepage"="http://github.com/wei/curl"
LABEL "maintainer"="Wei He <github@weispot.com>"

RUN apk add --no-cache curl ca-certificates

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
