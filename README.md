# asi.wroclaw.pl

This repository contains sources for [ASI homepage](https://asi.wroclaw.pl).

## Technical overview

We use [Middleman](https://middlemanapp.com/) to generate static pages that get uploaded to our server - Tramwaj.

## Setup

This guide assumes that you use either RVM or Rbenv.

1. `git clone git@github.com:asi-pwr/asi.wroclaw.pl.git`
2. `cd asi.wroclaw.pl`
3. `bundle install --jobs=$(nproc)`
4. `bundle exec middleman`
5. `xdg-open http://localhost:4567` (or open it manually in your browser)

## Deployment

Deployment is handled by our internal GitLab instance.
