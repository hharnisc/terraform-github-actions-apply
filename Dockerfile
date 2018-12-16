FROM hashicorp/terraform:0.11.10

LABEL "com.github.actions.name"="terraform apply"
LABEL "com.github.actions.description"="Run terraform apply"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/hharnisc/terraform-github-actions-apply"
LABEL "homepage"="http://github.com/hharnisc/terraform-github-actions-apply"
LABEL "maintainer"="Harrison Harnisch <hharnisc@gmail.com>"

RUN apk --no-cache add jq

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
