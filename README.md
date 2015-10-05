# UrlTitleGetter
URLからタイトルを取得します。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'url_title_getter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install url_title_getter

## Usage

```ruby
UrlTitleGetter.get_title('https://github.com/ovasi/url_title_getter')
#=> "ovasi/url_title_getter · GitHub"

UrlTitleGetter.get_decode_url('http://hogehoge.com/%E3%81%BB%E3%81%92%E3%81%BB%E3%81%92')
#=> "http://hogehoge.com/ほげほげ"
# decode後に不正バイトを含んでしまうURLはdecodeせず返します。
```
