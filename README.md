# hurriyet-ruby
Unofficial Ruby Wrapper for Hurriyet API - http://developers.hurriyet.com.tr/

# Getting Started

## Installation

`$ gem install hurriyet`

## Usage
```ruby
require 'hurriyet'

client = Hurriyet::Client.new(<YOUR_API_KEY>)
client.articles.all
```

# Resources
- [Articles](#articles)

## Articles

### Get all articles
```ruby
client.articles.all
```

### Get a single article
```ruby
client.articles.single id: 40220736
```

## Columns

### Get all columns
```ruby
client.columns.all
```

### Get a single column
```ruby
client.columns.single id: 40220397
```

## News Photo Galleries

### Get all galleries
```ruby
client.news_photo_galleries.all
```

### Get a single gallery
```ruby
client.news_photo_galleries.single id: 40220735
```

# Parameters
Hurriyet API allows you to filter, select and limit the resources you fetch. Here is how:

- **$select**: Select only 1 column from incoming resources.
- **$top**: Limit response resources.
- **$filter**: Filter incoming resources. See [here](http://www.odata.org/getting-started/basic-tutorial/#queryData) for more info.

```ruby
# Takes 3 articles.
client.articles.all top: 3

# Takes 3 articles of which title equals to 'Ankara'
client.articles.all top: 4, filter: 'Title eq \'Ankara\''

# Selects title of articles of which title contains word 'Istanbul'
client.articles.all filter: 'contains(Title, \'Istanbul\')', select: 'Title'
```
