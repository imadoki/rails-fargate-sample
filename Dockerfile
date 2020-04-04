FROM circleci/ruby:2.6-node-browsers
ENV APP_HOME /home/circleci/rails-fargate-sample
RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

COPY . .
RUN bundle install && yarn install

CMD ["bin/rails", "s" "-p" "3000" "-b" "'0.0.0.0'"]
