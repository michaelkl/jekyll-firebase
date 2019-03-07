FROM alpine
MAINTAINER Michael Klimenko <m@klimenko.site>

ENV LANGUAGE=en_US
ENV LANG=en_US.UTF-8
ENV JEKYLL_ENV=development
ENV LC_ALL=en_US

RUN apk --update add zlib-dev build-base libxml2-dev \
    libxslt-dev readline-dev libffi-dev ruby-dev yaml-dev \
    zlib libxml2 build-base ruby-io-console readline \
    libxslt ruby yaml libffi nodejs ruby-irb ruby-bigdecimal \
    ruby-json ruby-rake ruby-rdoc git bash npm

RUN gem clean \
 && gem install --no-ri --no-rdoc bundler \
        jekyll jekyll-feed jekyll-gist jekyll-gzip \
        jekyll-paginate jekyll-sitemap jekyll-category-pages \
        minima jekyll-theme-hydeout \
 && rm -rf /usr/lib/ruby/gems/*/cache/*.gem

RUN npm install -g firebase-tools

