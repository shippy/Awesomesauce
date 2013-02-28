# Awesomesauce

## What it does
Awesomesauce is a simple application that does four things:
1. has people register with their e-mail addresses,
2. sends them an e-mail every day to ask them what they're grateful for,
3. stores their reply in a database, and
4. sends them a summary of the things that made them happy. (Plus a link of something cute.)

## What's its stack?
Awesomesauce runs in Ruby on Rails, with SQLite as development DB and PostgreSQL as production DB. (All hail ActiveRecord.) It uses Devise to do (1), Heroku scheduler and ActionMailer to do (2) and (4), and Cloudmailin to do (3).

Also, the [rails compose gem](https://github.com/RailsApps/rails-composer) was used to make things easier to set up.

## What's the point of this?
Psychological research shows that if we're forced to think about things that we're grateful for, we tend to be happier, on average. It makes sense: mostly, we tend to worry about things that we should do, not things we currently have (which is why #firstworldproblems is such a good hashtag).

Awesomesauce is good for a person who doesn't have a diary - but does sort through his/her e-mail everyday. It takes ten seconds to respond and get it out of the pipeline, which is something you can afford to do even on a busy day. Hell, it's a great task to start with - you accomplish something for yourself, even before you got out of bed!