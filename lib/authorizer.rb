class Authorizer
  def self.authorize
    client = TwitterOAuth::Client.new(
                                      :consumer_key => ENV['TWITTER_CONSUMER_KEY'],
                                      :consumer_secret => ENV['TWITTER_CONSUMER_SECRET']
                                    )

    request_token = client.authentication_request_token(
                                                        :oauth_callback => 'oob'
                                                        )

    puts request_token.authorize_url

    print 'Please visit the URL and enter the code: '
    code = gets.strip

    access_token = client.authorize(
                                    request_token.token,
                                    request_token.secret,
                                    :oauth_verifier => code
                                    )

    access_token
  end
end
