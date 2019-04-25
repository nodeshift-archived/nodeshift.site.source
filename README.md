## Source Files for https://nodeshift.dev

This repository contains the [Hugo](https://gohugo.io) project which
is used to generate the static files for the website. Those static
files live in https://github.com/nodeshift/nodeshift.github.io. But
you don't need to check out that repository or do anything there.
Everything is handled with this repository and submodules within it.

### Local Development

The first time you clone this project, you'll need to initialize the
submodules. There are two.

  * `public` points to https://github.com/nodeshift/nodeshift.github.io
  * `themes/hugo-coder` points to https://github.com/nodeshift/hugo-coder

The theme submodule is just a fork of an open source theme that is used
for this site. The fork allows us to make changes to the theme and commit
them without pushing upstream.

The `public` directory is where build output goes. Through the magic of
submodules, changes to this directory - when pushed to github - end up
in `nodeshift/nodeshift.github.io`.

### Initial Setup

So, setting up for the first time.

```sh
git submodule init
git submodule update
```

You should only need to do this once.

### Iterative Development

From the root directory, run `hugo server -D`. Make whatever changes you want
and the static files will be updated in real time. You can see these changes
reflected in your browser without reloading. It's nice.

When you are ready to deploy your changes, run `./deploy.sh`. This will commit
changes in all three repos, `nodeshift.github.io`, `nodeshift.site.source` and
`hugo-coder`, and your changes will go live.

### Todo

  * Figure out the best way to have a staging branch and website.
  * Blog content (perhaps syndicated from developers.redhat.com).
  