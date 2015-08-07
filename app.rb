require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get ('/') {
  erb(:index)
}

get ('/find') {
  @word_count = params.fetch('phrase').word_count(params.fetch('word'))
  @phrase = params.fetch('phrase').gsub(params.fetch('word'), '<span class="ko-highlight">' + params.fetch('word') + '</span>')
  @word = params.fetch('word')
  @phrase_error = 0
  @word_error = 0
  @word_error = 1 if @word == ""
  @phrase_error = 1 if @phrase == ""
  @word_error = 1 if @word == ""
  if @phrase_error != 1 && @word_error != 1
    erb(:word_count_results)
  else
    erb(:index)
  end
}
