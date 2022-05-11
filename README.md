# README

I prototyped this using [Jumpstart](https://github.com/excid3/jumpstart). As their Github README suggests, it's how you should start your Rails application. The initial commit of this repository is from 

```
$ rails new myapp -d postgresql -m https://raw.githubusercontent.com/excid3/jumpstart/master/template.rb
```

## Dependencies

You will need the following to run the above Jumpstart template. These are based on my local setup and certainly not the minimum requirement.

```
$ ruby -v                
ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]

$ rails -v    
Rails 7.0.3

$ bundle -v     
Bundler version 2.2.2

$ npm -v 
8.9.0

$ yarn -v     
1.22.18    

$ psql --version 
psql (PostgreSQL) 14.2 (Debian 14.2-1+b2)

$ redis-server --version                            
Redis server v=6.0.16 sha=00000000:0 malloc=jemalloc-5.2.1 bits=64 build=81dc0221ec88139e

$ convert -version               
Version: ImageMagick 6.9.11-60 Q16 x86_64 2021-01-25 https://imagemagick.org
Copyright: (C) 1999-2021 ImageMagick Studio LLC
License: https://imagemagick.org/script/license.php
Features: Cipher DPC Modules OpenMP(4.5) 
Delegates (built-in): bzlib djvu fftw fontconfig freetype heic jbig jng jp2 jpeg lcms lqr ltdl lzma openexr pangocairo png tiff webp wmf x xml zlib

$ git --version                                          
git version 2.35.1
```
Please make sure your `gitconfig` has `user.email` and `user.name` to do the initial commit.

## Post Initial Commit

After the initial commit from the above `rails new` command, I removed some gems and added new ones. I followed their [Rubygems](https://rubygems.org/) documentation as best-practice.

* Remove `omniauths` and `site-generator` (personal preference)
* Add `dotenv-rails` 
* Add `rspec-rails`
* Add `simplecov` 

## Running Locally

Copy `env.template` to `.env.development` and set your environment properties there.

```
$ rails db:create db:migrate

$ ./bin/dev
15:58:35 web.1    | started with pid 42159
15:58:35 worker.1 | started with pid 42160
15:58:35 js.1     | started with pid 42161
15:58:35 css.1    | started with pid 42162
...
15:58:36 web.1    | *  Min threads: 8
15:58:36 web.1    | *  Max threads: 8
15:58:36 web.1    | *  Environment: development
15:58:36 web.1    | *          PID: 42159
15:58:36 web.1    | * Listening on http://127.0.0.1:3000
15:58:36 web.1    | * Listening on http://[::1]:3000
15:58:36 web.1    | Use Ctrl-C to stop
```

## Testing

Copy `.env.template` to `.env.test` and set your environment properties there.

```
$ rspec     
...

Finished in 0.11902 seconds (files took 1.26 seconds to load)
3 examples, 0 failures

$ xdg-open coverage/index.html
