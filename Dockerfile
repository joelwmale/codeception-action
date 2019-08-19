FROM php:7.3-cli-alpine

LABEL version="1.0.0"
LABEL repository="http://github.com/joelwmale/codeception-action"
LABEL homepage="http://github.com/joelwmale/codeception-action"
LABEL maintainer="Joel Male"
LABEL "com.github.actions.name"="Codeception Action"
LABEL "com.github.actions.description"="Run your codeception tests"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
