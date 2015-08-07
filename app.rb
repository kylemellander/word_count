require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')


get ('/') {
  @phrase_error = 0
  @word_error = 0

  erb(:index)
}

get ('/find') {
  @word_count = params.fetch('phrase').word_count(params.fetch('word'))
  @phrase = params.fetch('phrase')
  @word = params.fetch('word')
  @phrase_output = @phrase.gsub(/#{@word}/i, '<span class="ko-highlight">' + @word + '</span>')
  @phrase_error = 0
  @word_error = 0

  if params.fetch('phrase') == ""
    @phrase_error = 1
  end
  if @word == ""
    @word_error = 1
  elsif @word.gsub(/[^A-Za-z0-9\s\']/i, '') != @word
    @word_error = 2
  end
  if @phrase_error == 0 && @word_error == 0
    erb(:word_count_results)
  else
    erb(:index)
  end
}
