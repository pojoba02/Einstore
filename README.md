![Boost: Enterprise AppStore in Swift](https://github.com/LiveUI/Boost/raw/master/Other/Images/header.jpg)

[![Slack](https://img.shields.io/badge/join-slack-745EAF.svg?style=flat)](http://bit.ly/2B0dEyt)
[![Platforms](https://img.shields.io/badge/platforms-macOS%2010.13%20|%20Ubuntu%2016.04%20LTS-ff0000.svg?style=flat)](http://cocoapods.org/pods/FASwift)
[![Swift 4](https://img.shields.io/badge/swift-4.0-orange.svg?style=flat)](http://swift.org)
[![Vapor 3](https://img.shields.io/badge/vapor-3.0-blue.svg?style=flat)](https://vapor.codes)
[![iOS app](https://img.shields.io/badge/app-iOS-blue.svg?style=flat)](https://github.com/manGoweb/Boost-iOS/)
[![Android app](https://img.shields.io/badge/app-Android-green.svg?style=flat)](https://github.com/manGoweb/Boost-Android/)

##

Enterprise appstore for easy project deployment

# Warning! - Project is not finished, contact us on Slack for ETA

## Table of contents

* [Slack](#slack)
* [Frontend apps](#frontend-apps)
* [Installation](#installation)
    * [Docker](#docker)
    * [macOS](#macos)
    * [Ubuntu](#ubuntu)
    * [Heroku](#heroku)
* [Continuous Integration](#continuous-integration)


## Slack

Get help using and installing this product on our [Slack](http://bit.ly/2B0dEyt), channel <b>#help-boost</b>

## Frontend apps

* [iOS app](https://github.com/manGoweb/Boost-iOS/)
* [Android app](https://github.com/manGoweb/Boost-Android/)

## Installation

#### Docker

```ruby
docker install boost
```

#### macOS

```ruby
#brew install mysql
#brew install python
#brew install java
brew install boost
```

#### Ubuntu 16.04 LTS

```ruby
#brew install mysql
#brew install python
#brew install java
brew install boost
```

#### Heroku

[![Deploy Boost enterprise appstore to heroku](https://camo.githubusercontent.com/c0824806f5221ebb7d25e559568582dd39dd1170/68747470733a2f2f7777772e6865726f6b7563646e2e636f6d2f6465706c6f792f627574746f6e2e706e67)](https://heroku.com/deploy?template=https://github.com/LiveUI/Boost)


## Continuous integration

You can upload a new build simply by sending the following `curl`

```ruby
curl -X POST -H "Authorization: Token XXXXXX-XXXXXX-XXXXXX-XXXX" -d @myfilename https://api.appstorehq.net?tags=some_tag_no1,some_tag_2
```

## Author

Ondrej Rafaj , development@mangoweb.cz

## License

Boost is available under the Apache2 license. See the LICENSE file for more info.

