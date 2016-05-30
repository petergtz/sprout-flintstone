# sprout-wrap

This project uses [soloist](https://github.com/mkocher/soloist) and [librarian-chef](https://github.com/applicationsonline/librarian-chef)
to run a subset of the recipes in sprout's cookbooks.

[Fork it](https://github.com/pivotal-sprout/sprout-wrap/fork) to
customize its [attributes](http://docs.chef.io/attributes.html) in [soloistrc](/soloistrc) and the list of recipes
you'd like to use for your team. You may also want to add other cookbooks to its [Cheffile](/Cheffile), perhaps one
of the many [community cookbooks](https://supermarket.chef.io/cookbooks). By default it configures an OS X
Mavericks workstation for Ruby development.

Finally, if you've never used Chef before - we highly recommend you buy &amp; watch [this excellent 17 minute screencast](http://railscasts.com/episodes/339-chef-solo-basics) by Ryan Bates.

## Overview (Current Understanding)

`bundle exec soloist` first runs Librarian-Chef and lets it pull in all cookbooks defined in Cheffile. Then it runs all recipes in soloistrc.
The recipes in their use attributes defined in the bottom part of soloistrc.

## Installation under Mavericks (OS X 10.9)

### 1. Install Command Line Tools

    xcode-select --install

If you receive a message about the update server being unavailable and are on Mavericks, then you already have the command line tools.

### 2. Clone this project

    git clone https://github.com/cloudfoundry/sprout-capi.git
    cd sprout-capi

### 3. Install soloist & and other required gems

If you're running under rvm or rbenv, you shouldn't preface the following commands with `sudo`.

    sudo gem install bundler
    bundle

If you receive errors like this:

    clang: error: unknown argument: '-multiply_definedsuppress'

then try downgrading those errors like this:

    sudo ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future bundle

### 4. Run soloist

[The `caffeinate` command will keep your computer awake while installing; depending on your network connection, soloist can take from 10 minutes to 2 hours to complete.]

    caffeinate bundle exec soloist

### 5. Optionally run other commands to set up workstation

There are a number of functions and aliases that are installed into a workstation by sprout. After it succeeds,
one may want to run the following commands:

```
recreate_bosh_lite
```

## Caveats

### Homebrew

- Homebrew cask has been [integrated](https://github.com/caskroom/homebrew-cask/pull/15381) with Homebrew proper. If you are experiencing problems installing casks and
  have an older installation of Homebrew, running `brew uninstall --force brew-cask; brew update` should fix things.
- If you are updating from an older version of sprout-wrap, your homebrew configuration in soloistrc might be under `node_attributes.sprout.homebrew.formulae`
  and `node_attributes.sprout.homebrew.casks`. These will need to be updated to `node_attributes.homebrew.formulas` (note the change from formulae to formulas)
  and `node_attributes.homebrew.casks`.

## Roadmap

See Pivotal Tracker: https://www.pivotaltracker.com/s/projects/884116

## Discussion List

  Join [sprout-users@googlegroups.com](https://groups.google.com/forum/#!forum/sprout-users) if you use Sprout.

## References

* Slides from @hiremaga's [lightning talk on Sprout](http://sprout-talk.cfapps.io/) at Pivotal Labs in June 2013
* [Railscast on chef-solo](http://railscasts.com/episodes/339-chef-solo-basics) by Ryan Bates (PAID)
