# Website

Personal website built using [Hugo].

## Configuration

Please consult the Minimo theme documentation for further instructions.

## Installing Hugo

This repository is presently using the Hugo extended 0.101.0 version.

## Cloning

The following will give you a project that is set up and ready to use.

The `hugo server` command builds and serves the site.

If you just want to build the site, run `hugo` instead.

```sh
git clone https://github.com/sylus/website
cd website
./dev.sh
```

The theme is included as part of a Hugo module:

```sh
▶ hugo mod graph
project github.com/zeon-studio/hugoplate@v0.0.0-20230718073735-8df5a7032e3d+vendor
project github.com/gethugothemes/hugo-modules/search@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/pwa@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/images@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/videos@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/icons/font-awesome@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/gzip-caching@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/adsense@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/accordion@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/table-of-contents@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/tab@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/modal@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/gallery-slider@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/components/preloader@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/components/social-share@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/components/cookie-consent@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/components/custom-script@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/components/render-link@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/shortcodes/button@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/shortcodes/notice@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/seo-tools/basic-seo@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/seo-tools/site-verifications@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
project github.com/gethugothemes/hugo-modules/seo-tools/google-tag-manager@v0.0.0-20230705095442-1f2d5ac8b18d+vendor
```

If you want to do SCSS edits and want to publish these, you need to install `PostCSS` (not needed for `hugo server`):

```sh
npm install
```

## Running the website locally

Once you've cloned the site repo, from the repo root folder, run:

```sh
./dev.sh
```

## Linting

To lint all Markdown files in a Node.js project (excluding dependencies), the following commands might be used:

```sh
markdownlint 'content/**/*.md' --ignore node_modules --fix
```
