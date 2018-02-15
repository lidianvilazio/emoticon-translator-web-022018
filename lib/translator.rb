# require modules here
require "yaml"


def load_library(yaml)
    # code goes here
    emoticons = YAML.load_file(yaml)
    getting = {"get_meaning" => {}, "get_emoticon" =>
    {}}
    emoticons.each do |k, v|
        emoji_english, japa = v
        getting["get_emoticon"][emoji_english] = japa
        getting["get_meaning"][japa] = k
    end
    # "get_emoticon", "get_meaning"
    getting
end


def get_japanese_emoticon(library, symbol)
    # code goes here
    l = load_library(library)
    # code goes here
    count = 0
    l.each do |k, v|
        v.each do |k2, v2|
            if k2 == symbol
                count = 1
                return v2
            end
        end
    end
    if count == 0
        return "Sorry, that emoticon was not found"
    end
end

def get_english_meaning(library, symbol)
    l = load_library(library)
    # code goes here
    count = 0
    l.each do |k, v|
        v.each do |k2, v2|
            if k2 == symbol
                count = 1
                return v2
            end
        end
    end
    if count == 0
        return "Sorry, that emoticon was not found"
    end
end
