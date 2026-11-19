FROM hugomods/hugo:exts AS builder

WORKDIR /src
COPY . .
RUN hugo --minify

FROM nginx:alpine
COPY site.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /src/public/ /public/
EXPOSE 80