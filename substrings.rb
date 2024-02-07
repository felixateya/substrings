def substrings(word, dictionary)
    word = word.downcase
    result = Hash.new(0)

    dictionary.each do |substring|
        count = word.scan(/#{substring.downcase}/).length
        result[substring] += count if count > 0
    end

    result
end

my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p(substrings("horn", my_dictionary))
