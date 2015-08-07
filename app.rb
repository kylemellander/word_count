require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get ('/') {
  erb(:index)
}

get ('/find') {
  @word_count = params.fetch('phrase').word_count(params.fetch('word'))
  @display_word_count = params.fetch('phrase').gsub(params.fetch('word'), '<span class="ko-highlight">' + params.fetch('word') + '</span>')
  erb(:word_count_results)
}
