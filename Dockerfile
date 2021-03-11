#FROM newtmitch/sonar-scanner:4.5
FROM sonarsource/sonar-scanner-cli

LABEL "com.github.actions.name"="SonarQube Scan - Cepsa"
LABEL "com.github.actions.description"="SonarQube Scanner"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/cepsadigital/devops-sonar-github-action"
LABEL homepage="https://github.com/cepsadigital"
LABEL maintainer="Cepsa"

#RUN npm config set unsafe-perm true && \
#  npm install --silent --save-dev -g typescript@3.5.2 && \
#  npm config set unsafe-perm false && \
#  apk add --no-cache ca-certificates jq

#ENV NODE_PATH "/usr/lib/node_modules/"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]