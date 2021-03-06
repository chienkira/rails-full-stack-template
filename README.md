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
- [x] Encrypted dotenv file with [dotenv_sekrets](https://github.com/mikamai/dotenv_sekrets)
- [x] Parsable log with [lograge](https://github.com/roidrage/lograge)
- [x] Error tracking with [sentry](https://sentry.io)
- [x] And many tweaks (Enumerize, Meta-tags, Bullet, Awesome-print...) 

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
$ docker/sidekiq        # to start sidekiq (async job)
$ docker/bash           # to start new bash session
```

## Notices

- Need to run `docker-compose run --rm web yarn install --check-files` to make yarn and webpack work for the first time
