# my app.rb
require 'sinatra'
require_relative "isbn.rb"

get '/' do
	'Hello world!' + ' ' + 
	'Welcome to Ruby Sinatra'
	
	erb :isbn_input
end

post '/isbnnum' do
#	num = params['ISBN']
	num = params[:ISBN]
	@pgm_results =
		valid_number (num)
	#{}"Answer is #{pgm_results}"
	erb :isbn_input
end