FROM ruby:3.1.2

RUN bundle config --global frozen 1

WORKDIR /bms-app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["rails","server","-b","0.0.0.0","-p","3000"]