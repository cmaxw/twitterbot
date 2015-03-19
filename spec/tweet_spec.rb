require 'spec_helper'

describe Tweet do
  it "properly creates a tweet object" do
    tweet = Tweet.new("abcdefg")
    expect(tweet.message).to eq("abcdefg")
  end

  it "cannot have more than 140 characters" do
    message =  Tweet.new ("x"*141)
    expect(message).not_to be_valid
  end
end
