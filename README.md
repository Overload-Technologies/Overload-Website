# Overload Website
Public-facing website for [Overload](https://github.com/adriengivry/Overload).

Live at: [overloadengine.org](https://overloadengine.org).

## Local development

Requires [Hugo](https://gohugo.io/).

```sh
hugo serve    # Run locally at http://localhost:1313
hugo --minify # Build the site into public/
```

## Docker

Build and run the website:

```sh
docker build -t overload-website .
docker run --rm -p 8080:80 overload-website
```

The site will be available at http://localhost:8080. The Docker image builds the Hugo site in a separate stage and serves its output with Nginx. Images are published to GitHub Container Registry on pushes to `main`.

## Contributing
Contributions are more than welcome!
