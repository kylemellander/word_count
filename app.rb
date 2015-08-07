require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get ('/') {
  erb(:index)
}

get ('/find') {
  @word_count = params.fetch('phrase').word_count(params.fetch('word'))
  erb(:word_count_results)
}
