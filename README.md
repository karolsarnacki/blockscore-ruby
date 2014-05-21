# blockscore-ruby

This is the official library for Ruby clients of the BlockScore API. [Click here to read the full documentation](https://manage.blockscore.com/docs).

## Install

Via rubygems.org:

```ruby
gem install blockscore
```

If you are using rails, add the following to your `Gemfile`:

```ruby
gem 'blockscore', '~> 1.0.1'
```

## Getting Started

### Initializing BlockScore

```ruby
@blockscore = BlockScore::Client.new("your-api-key", version = 2)
```

## Verifications
    
### List all verifications

```ruby
@blockscore.get_verifications
```
    
### View a verification by ID

```ruby
@blockscore.get_verification("526781407e7b0ace47000001")
```

### Create a new verification

```ruby
@blockscore.create_verification({
  type: "us_citizen",
  date_of_birth: "1993-08-23",
  identification: {
    ssn: "0000"
  },
  name: {
    first: "Alain",
    middle: nil,
    last: "Meier"
  },
  address: {
    street1: "1 Infinite Loop",
    street2: nil,
    city: "Cupertino",
    state: "CA",
    postal_code: "95014",
    country: "US"
  }
})
```

## Question Sets

### Create a new question set

```ruby
@blockscore.create_question_set({
  verification_id: "53099a636274639ebb0e0000"
})
```

### Score a question set

```ruby
@blockscore.score_question_set({
  verification_id: "53099a636274639ebb0e0000",
  question_set_id: "53099c5f6274639ebb7e0000",
  answers: [
    {
      question_id: 1,
      answer_id: 1
    },
    {
      question_id: 2,
      answer_id: 1
    },
    {
      question_id: 3,
      answer_id: 1
    },
    {
      question_id: 4,
      answer_id: 1
    },
    {
      question_id: 5,
      answer_id: 1
    }
  ]
})
```

## Contributing to BlockScore
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 BlockScore. See LICENSE.txt for
further details.

