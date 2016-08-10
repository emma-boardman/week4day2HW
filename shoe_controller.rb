require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/shoe')

get '/shoe/new' do
  erb( :new )
end

post '/shoe' do
  @shoe = Shoe.new( params )
  @shoe.save()
  #save the order, create pizza
  erb( :create )
end

get '/shoe' do
  @shoes = Shoe.all()
erb( :index )
end

