FROM ruby:2.7

EXPOSE 4567

RUN apt update &&\
    apt upgrade -y &&\
    apt install -y nodejs &&\
    mkdir -p /website

VOLUME /website

COPY Gemfile Gemfile.lock /website/

WORKDIR /website

RUN gem install bundler:2.3.26 && bundler install -j $(nproc)

CMD bundle exec middleman build --clean --parallel --build-dir=/website/_site
