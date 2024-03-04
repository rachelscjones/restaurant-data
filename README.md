## Installation

#### Setup

In order to run this solution locally, you will need to have installed Rails. Check with:

```bash
$ rails --version
```

If no version number is returned, please install [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) before continuing.

#### Dependencies

You'll also need to install dependencies with:

```bash
$ bundle install
```

The `bundle` command installs all Ruby Gems specified in the Gemfile.

#### Launch 🚀

Launch the solution by running:

```bash
$ bin/rails s
```

Then go to [localhost:3000](http://localhost:3000/)


## Notes, Assumptions & Improvements

* Solution does require data to be entered into the postcode search box
* BUT it doesn't check if the postcode is a valid one before searching on it. I was hoping to use a gem called uk_postcode to validate data before making the API call but I couldn't get it to work. An improvement I'd like to make would be to work on this further!
* So currently, if a non-valid postcode is entered, the search returns nothing...
