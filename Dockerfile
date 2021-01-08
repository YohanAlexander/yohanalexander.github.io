FROM ruby:2.7

WORKDIR /website

RUN gem install jekyll

RUN apt update && apt install -y nodejs

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4000

ENTRYPOINT [ "bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0", "--port", "4000" ]
