def word_substituter(message)

    dictionary = {
        "hello" => "hi",
        "to"    =>  "2",
        "two"   =>  "2",
        "too"   =>  "2",
        "for"   =>  "4",
        "four"  =>  "4",
        "be"    =>  "b",
        "you"   =>  "u",
        "at"    =>  "@",
        "and"   =>  "&"
    }

    split = message.split(" ")
    filtered = []

    split.each do |word|
        lowercase = word.downcase
        if dictionary.has_key?(lowercase)
            filtered << dictionary[lowercase]
        else
            filtered << word
        end
    end
    filtered.join(" ")
end


def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end


def selective_tweet_shortener(tweets)
    if tweets.size > 140
        word_substituter(tweets)
    else
        tweets
    end
end


def shortened_tweet_truncator(tweets)
    if tweets.size < 140
        tweets
      else word_substituter(tweets).size < 140
         "#{word_substituter(tweets)[0..133]} (...)"
      end    
end