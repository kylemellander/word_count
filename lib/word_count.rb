class String
  def word_count(word = nil)
    return 0 if !word
    phrase_words = self.gsub(/[^A-Za-z0-9\s\']/i, '').split()
    match_result = 0
    phrase_words.each do |phrase_word|
      if phrase_word.downcase == word.downcase
        match_result += 1
      end
    end
    return match_result
  end
end
