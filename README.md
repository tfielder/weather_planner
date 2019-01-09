# Whetherwise README
[![Waffle.io - Columns and their card count](https://badge.waffle.io/tfielder/api_weather_planner.svg?columns=all)](https://waffle.io/tfielder/api_weather_planner)

[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/tfielder/api_weather_planner)

![screen shot 2019-01-08 at 11 37 47 pm](https://user-images.githubusercontent.com/38568909/50881517-14ba6b00-139f-11e9-9491-37a45a4b4887.png)

![screen shot 2019-01-08 at 11 37 21 pm](https://user-images.githubusercontent.com/38568909/50881553-37e51a80-139f-11e9-99cc-6c53b4a0ac5a.png)


## Table of Contents

* [Introduction](#introduction)
* [Core Details](#core-details)
* [Initial Setup](#initial-setup)
* [Dependencies](#dependencies)
* [Known Issues](#known-issues)
* [Running Tests](#running-tests)
* [How To Contribute](#how-to-contribute)
* [Tech Stack List](#tech-stack-list)

## <a name="introduction"></a>Introduction
  Many of us plan our activities and what we'll wear based on the weather, so why not have all of these in one place? Weatherwise is a basic app that integrates the weather, apparel recommendations based on the weather.

  Visit the app here: https://whetherwise.herokuapp.com/

  This app also makes use of the weather planner backend api.
  The backend api repo can be found here: https://github.com/tfielder/api_weather_planner
  And the backend live api can be found here: https://weather-planner-api.herokuapp.com/

## <a name="core-details"></a>Core Details
  App Name: Whetherwise
  Last Update: 01/05/19
  Authors/Contributors: Tim Fielder
  Version: 1.1.1

## <a name="initial-setup"></a>Initial Setup
  To get started locally:
  1. Clone the repo found here: (https://github.com/tfielder/weather_planner)
  2. Run `bundle` from the CLI.
  3. Run `rails s`
  4. Navigate to `localhost:3000` in the address bar of your browser.

## <a name="dependencies"></a>Dependencies
Gems:
* faker
* figaro

testing:
* rspec-rails
* capybara
* factory_bot_rails
* pry
* shoulda-matchers
* launchy
* database_cleaner
* simplecov

## <a name="known-issues"></a>Known Issues

## <a name="running-tests"></a>Running Tests
1. From the command line run `bundle`.
2. Run rspec.

## <a name="how-to-contribute"></a>How to Contribute
  Drop a line to the creator, or add a Pull Request on GitHub.

## <a name="tech-stack-list"></a>Tech Stack List
* Ruby 2.4.1
* Ruby on Rails 5.1
