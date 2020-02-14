# rails-full-stack-template

## Versions

- Ruby 2.6
- Rails 6

# Features

## Rails app

- [x] [Rubocop](https://github.com/rubocop-hq/rubocop) (Code formatter/checker)
- [ ] [Rspec](https://rspec.info/) (Test)
- [x] Local development with [Docker](https://www.docker.com/)
- [ ] [Sidekiq](https://github.com/mperham/sidekiq) (Background job processing)

## Devops

- [ ] CI by [CircleCI](https://circleci.com/)
- [ ] Infra as code by [Terraform](http://terraform.io/)
- [ ] Deployment automation by [Capistrano](https://capistranorb.com/)
- [ ] Server provisioning by [To be determined](#)

# How to

## About local development env

```bash
$ docker-compose build  # to build images at the first time
$ docker/start          # to start local development env
$ docker/stop           # to stop local development env
$ docker/rails-console  # to get into rails console
$ docker/bash           # to start new bash session inside web container
```

