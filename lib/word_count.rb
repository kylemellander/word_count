class String
  def word_count(word = nil)
    phrase = self.gsub(/[^A-Za-z0-9\s\']/i, '')
  end
end
