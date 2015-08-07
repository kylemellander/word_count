class String
  def word_count(word = nil)
    return 0 if !word
    phrase = self.gsub(/[^A-Za-z0-9\s\']/i, '')
    match_result = (phrase.downcase).scan(word.downcase).size
    return match_result
  end
end
