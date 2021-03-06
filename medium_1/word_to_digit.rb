def word_to_digit(str)
  hsh =[['one', '1'], ['two','2'],['three','3'], ['four','4'], ['five','5'],
        ['six','6'], ['seven','7'], ['eight','8'], ['nine','9'], ['zero','0']].to_h
  words = str.split
  words.each do |word|
    if word.include?('.')
      key = word[0..-2]
      word.gsub!(key, hsh[key]) if hsh.keys.include?(key)
    end
    word.gsub!(word,hsh[word]) if hsh.keys.include?(word)
    
  end
  words.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'