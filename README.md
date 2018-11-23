# Static site example for Gleis PaaS

This is a simple static site example made for the [Gleis PaaS](https://gleis.cloud) using the [Rack](http://rack.github.io) webserver interface. Its purpose is to show that one can also use the Gleis platform to easily and quickly deploy a static site which does not have any application logic but just consists of HTML, CSS, Javascript and image files.

## Prerequisites

In order to run this example static site locally you will need [Ruby](https://www.ruby-lang.org) along with the [Bundler](https://rubygems.org/gems/bundler) gem to be installed on your computer. As soon as you are ready to deploy you will need an [account on the Gleis PaaS](https://gleis.cloud/beta) as well as the Gleis Ruby gem.

## Try out the example static site locally

Download your own copy of this example static site:
```sh
$ git clone git@github.com:towards/static-example.git
$ cd static-example
```

Install the dependencies:
```sh
$ bundle
```

Start the server:
```sh
$ rackup
```
The example static site should now be reachable locally on your computer at [http://localhost:9292](http://localhost:9292)

## Deploy to Gleis

Create new app on Gleis:
```sh
$ gleis app create
```

Upload app to Gleis:
```sh
$ git push gleis master
```

The sample app will be online in a few seconds and reachable through the secure URL mentioned when you created the Gleis app with the above command.

## Remarks

- If you would like to add a new page to your static site simply create a new directory inside the `public` directory and create an `index.html` file.
- Image, Javascript and stylesheet files should be stored in their respective directory under the `public/assets` directory.
- Browser caching of static assets is set to 10 days.
