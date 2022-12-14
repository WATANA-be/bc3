FROM ruby:2.7.3

RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs      

RUN mkdir /app_name 

ENV APP_ROOT /app_name 
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
# https://book-reviews.blog/execute-simple-ruby-script-on-Docker/
RUN gem install bundler 
RUN bundle install
ADD . $APP_ROOT