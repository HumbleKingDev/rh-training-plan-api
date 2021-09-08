FROM ruby:3.0.2
RUN apt-get update -qq \
&& apt-get install -y build-essential libpq-dev nodejs
WORKDIR /rh-training-plan-api
ADD . /rh-training-plan-api
ADD Gemfile /rh-training-plan-api/Gemfile
ADD Gemfile.lock /rh-training-plan-api/Gemfile.lock
RUN bundle install
EXPOSE 3000
CMD ["bash"]