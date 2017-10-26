<p align="center">
    <img src="https://cloud.githubusercontent.com/assets/1342803/24797159/52fb0d88-1b90-11e7-85a5-359fff0496a4.png" width="320" alt="MySQL">
    <br>
    <br>
    <a href="http://beta.docs.vapor.codes/getting-started/hello-world/">
        <img src="http://img.shields.io/badge/read_the-docs-92A8D1.svg" alt="Documentation">
    </a>
    <a href="http://vapor.team">
        <img src="http://vapor.team/badge.svg" alt="Slack Team">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/mysql">
        <img src="https://circleci.com/gh/vapor/mysql.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://travis-ci.org/vapor/api-template">
    	<img src="https://travis-ci.org/vapor/api-template.svg?branch=master" alt="Build Status">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-3.1-brightgreen.svg" alt="Swift 3.1">
    </a>
</center>

# HomeBrew

	1. Homebrew install packages to their own directory and then symlinks their files into /usr/local
	2. Brew install update
	3. Brew upgrade
	4. Need to get access to vapor
	5. vapor —help - Check if vapor is installed
	6. vapor self-update

# Create New Vapor project

	mkdir -> cd in dir -> vapor new <name> -> cd into <name> ->
	vapor build to build the project - fetches all the necessary dependencies


# Run Project

	vapor run serve —port=8080
	localhost;8080/hello = hello, world in json
	vapor xcode
	Push up to GitHub

# Retrieve from Git
	git clone
	vapor build
	vapor xcode

# Vapor Overview

	Vapor is modular, code is split up into modules which are grouped together to create a package.  The package.swift file can be utilized by adding a packages Git url.

	Packages
	Fluent - https://github.com/vapor/fluent
	Fluent Provide - https://github.com/vapor/fluent-provider
	mysql - https://github.com/vapor/mysql
	mysql driver - https://github.com/vapor/mysql-driver
	leaf - https://github.com/vapor/leaf
	kitura with Vapor - https://github.com/vapor-community/kitura-provider
	Push Notification using HTTP/2 protocol - https://github.com/matthijs2704/vapor-apns
	swift project to servers - https://github.com/jakeheis/Flock
	HTTP Logger - https://github.com/himani93/heimdall
	Vapor providers - https://github.com/search?utf8=✓&q=topic%3Avapor-provider&type=Repositories

# Routing

	When run from Xcode go to safari and type in localhost:8080
	Since I created a vapor project using the —template=api, all routing takes place in the Sources/App/Routes/Routes/Routes.swift
	1.  I created a few simple routes to understand how routing works with vapor, when a user goes to the below urls it will display data specific to that route
	1. / = Hello, Vapor
	2. /json = Hello, Vapor in Json Format
	3. /usr/<int> = You requested User # <int>
	4. /hello = hello, world
	5. /plaintext = Hello, world!
	6. /info = information about server
	7. /description = same as info just a little different

