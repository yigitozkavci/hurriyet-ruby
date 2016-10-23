# hurriyet-ruby
![Gem Version](https://img.shields.io/gem/v/hurriyet.svg)
![Test Coverage](https://img.shields.io/badge/coverage-100%25-brightgreen.svg)
![Travis CI](https://img.shields.io/travis/yigitozkavci/hurriyet-ruby.svg)

Unofficial Ruby Wrapper for Hurriyet API - http://developers.hurriyet.com.tr/

## Getting Started

### Installation

`$ gem install hurriyet`

### Usage
```ruby
require 'hurriyet'

client = Hurriyet::Client.new(<YOUR_API_KEY>)
client.articles.all
```

## Table of Contents
### Resources

- [Articles](#articles)
- [Columns](#columns)
- [News Photo Galleries](#news-photo-galleries)
- [Pages](#pages)
- [Paths](#paths)
- [Writers](#writers)

### Other

- [Parameters](#parameters)

## Resources
### Articles

```ruby
# Get all articles
client.articles.all
```

```ruby
# Get a single article
client.articles.single(40220736)
```

### Columns

```ruby
# Get all columns
client.columns.all
```

```ruby
# Get a single column
client.columns.single(40220397)
```

## News Photo Galleries

```ruby
# Get all galleries
client.news_photo_galleries.all
```

```ruby
# Get a single gallery
client.news_photo_galleries.single(40220735)
```

## Pages

```ruby
# Get all pages
client.pages.all
```

```ruby
# Get a single page
client.pages.single('55e861bc6534652c108afa2f')
```

## Paths

```ruby
# Get all paths
client.paths.all
```

```ruby
# Get a single path
client.paths.single('563cddcc67b0a934e44ee2d7')
```

## Writers

```ruby
# Get all writers
client.writers.all
```

```ruby
# Get a single writer
client.writers.single('570167e867b0a90bdc503452')
```

# Parameters
Hurriyet API allows you to filter, select and limit the resources you fetch. Here is how:

- **$select**: Select only 1 column from incoming resources.
- **$top**: Limit response resources.
- **$filter**: Filter incoming resources. See [here](http://www.odata.org/getting-started/basic-tutorial/#queryData) for more info.

```ruby
# Takes 3 articles.
client.articles.all top: 3

# Takes 3 articles of which path equals to 'gundem'
client.articles.all top: 4, filter: 'Path eq \'gundem\''

# Selects title of articles of which title contains word 'Istanbul'
client.articles.all filter: 'contains(Title, \'Istanbul\')', select: 'Title'
```
