FROM node:16

# do not require puppeteer download of Chronium;
# resume-cli uses puppeteer for PDF export, which we do not use.
ENV PUPPETEER_SKIP_DOWNLOAD=1

LABEL maintainer="ScottSmudger <scottsmudger@outlook.com>"

RUN npm install -g resume-cli
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
