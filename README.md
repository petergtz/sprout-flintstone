# sprout-flintstone

This sprout is based on [sprout-capi](https://github.com/cloudfoundry/sprout-capi.git) and uses a configuration that is useful to the flintstone team.

## Installation

    git clone https://github.com/petergtz/sprout-flintstone.git
    cd sprout-flintstone
    gem install bundler
    bundle
    bundle exec soloist

**Important**:
Make sure you like the default `soloistrc` that comes with this repo. It will make intrusive changes to your system. Otherwise, change it and enable only the configuration settings you need.

## How it works

This project uses [soloist](https://github.com/mkocher/soloist) and [librarian-chef](https://github.com/applicationsonline/librarian-chef)
to run a subset of the recipes in sprout's cookbooks.

`bundle exec soloist` first runs Librarian-Chef and lets it pull in all cookbooks defined in the `Cheffile`. Then it runs all recipes in `soloistrc`.
The recipes in there use attributes defined in the bottom part of `soloistrc`.

## Tools

There are a number of functions and aliases that are installed into a workstation by sprout. After it succeeds,
one may want to run the following commands:

```
recreate_bosh_lite
```

Or, to get a full list of all the aliases defined, run:

    alias

## Discussion List

  Join [sprout-users@googlegroups.com](https://groups.google.com/forum/#!forum/sprout-users) if you use Sprout.
