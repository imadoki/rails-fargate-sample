FROM circleci/ruby:2.6-node-browsers
ENV APP_HOME /home/circleci/rails-fargate-sample
RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

CMD ["exit"]
