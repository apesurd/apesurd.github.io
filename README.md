# Read me file for the project

## Update the version of ruby. 
### Check out the list of ruby versions available
```
ruby-install --latest
```

### Install a specific version of ruby
```
ruby-install ruby <version>
```

### Update the version of ruby-install
```
brew update
brew upgrade ruby-install
```

## Install jekyll
```
gem install bundler jekyll
```

## Update the Gemfile
ref: https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/#remote-theme-method
1. Follow the instructions in the link above
2. Create a Gemfile, and run bundle or bundle update. 
3. That should set up the theme in the same manner as how it would be done on github pages.

## Run the website
```
bundle exec jekyll serve --livereload
```
