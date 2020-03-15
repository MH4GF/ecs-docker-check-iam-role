FROM mesosphere/aws-cli

RUN apk update && apk upgrade && apk add --no-cache jq curl

COPY . .

ENTRYPOINT ["./check_iam_role.sh"]
