# rails-full-stack-template

## Versions

- Ruby 2.6
- Rails 6

# Features

## Rails app

- [x] [Rubocop](https://github.com/rubocop-hq/rubocop) (Code formatter/checker)
- [x] [Rspec](https://rspec.info/) (Test)
- [x] Local development with [Docker](https://www.docker.com/)
- [x] [Sidekiq](https://github.com/mperham/sidekiq) (Background job processing)

## Devops

- [x] CI by [CircleCI](https://circleci.com/)
- [ ] Infra as code by [Terraform](http://terraform.io/)
- [ ] Deployment automation by [Capistrano](https://capistranorb.com/)
- [ ] Server provisioning by [To be determined](#)

# How to

## About local development env

```bash
$ docker-compose build  # to build images at the first time
$ docker/start          # to start local development env
$ docker/stop           # to stop local development env
$ docker/sidekiq        # start sidekiq
$ docker/bash           # to start new bash session inside web container
```

## Notices

- Need to run `yarn install --check-files` to make yarn and webpack work for the first time
