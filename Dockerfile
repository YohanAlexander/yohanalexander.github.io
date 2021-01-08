FROM ruby:2.7

RUN gem install jekyll

COPY Gemfile Gemfile.lock ./

RUN bundle install

RUN apt update && apt install -y nodejs

EXPOSE 4000

ENTRYPOINT [ "bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0", "--port", "4000" ]
