# jekyll-firebase
Docker image with Jekyll and Google Firebase tools for building and deploying static web sites

Image includes:
* [Jekyll](https://jekyllrb.com/) with a couple of plugins and a Hydeout theme
* git
* NodeJS
* npm
* [firebase-tools](https://github.com/firebase/firebase-tools)

## Image
Docker image is located on Docker Hub:
https://hub.docker.com/r/michaelkl/jekyll-firebase

## Usage
You can use this image for local development in a way like this:
```bash
docker run -it \
           --rm \
           --volume=/your/jekyll/project:/app \
           -p 4000:4000 michaelkl/jekyll-firebase \
           /bin/sh -c "cd /app && bundle install && jekyll s -H 0.0.0.0"
```

See the `examples` folder for some pipeline configuration examples.
