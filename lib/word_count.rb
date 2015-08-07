class String
  def word_count(word = nil)
    return 0 if !word
    phrase = self.gsub(/[^A-Za-z0-9\s\']/i, '')
    match_result = phrase.scan(word).size
    return match_result
  end
end
