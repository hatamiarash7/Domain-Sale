FROM nginx:1.25.5-alpine

ARG DATE_CREATED
ARG APP_VERSION

LABEL maintainer="Arash Hatami <hatamiarash7@gmail.com>"
LABEL org.opencontainers.image.created=$DATE_CREATED
LABEL org.opencontainers.image.version=$APP_VERSION
LABEL org.opencontainers.image.authors="hatamiarash7"
LABEL org.opencontainers.image.vendor="hatamiarash7"
LABEL org.opencontainers.image.title="Domain Sale"
LABEL org.opencontainers.image.description="Domain Sale Template"
LABEL org.opencontainers.image.source="https://github.com/hatamiarash7/domain-sale"

COPY ./src/* /usr/share/nginx/html/
COPY ./config/default.conf.template /etc/nginx/templates/default.conf.template

CMD ["nginx", "-g", "daemon off;"]
