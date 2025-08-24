# asi.wroclaw.pl

This repository contains sources for [ASI homepage](https://asi.wroclaw.pl).

## Technical overview

We use [Middleman](https://middlemanapp.com/) to generate static pages for deploy to the GitHub Pages.

## Setup

This guide assumes that you use RVM and have installed Ruby version specified in [.ruby-version](./.ruby-version).

### Ruby setup

```
rvm install <version>
```

or

```
rvm use <version>
```

### Project setup

```
git clone git@github.com:asi-wroclaw/asi.wroclaw.pl.git
```

```
cd asi.wroclaw.pl
```

```
bundle install --jobs=$(nproc)
```

### Update setup

```
gem install bundle_update_interactive
```

## Development

```
bundle exec middleman
```

Use snippet below or open it manually in your browser:
```
xdg-open http://localhost:4567
```


### Building

```
bundle exec middleman build
```

### Updating

```
bundle ui
```
