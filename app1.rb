#encoding:utf-8
require 'sinatra'

get '/' do
  erb :index
end

get '/contact' do
  @title='contact'
  @message='contact'
  erb :message
end
get '/faq' do
  @title='faq'
  @message='faq'
  erb :message
end
get '/something' do
  @title='something'
  @message='something'
  erb :message
end
post '/' do
  @name=params[:name]
  @pass=params[:pass]

  if @name=='admin' && @pass=='12345'
    erb :welcome
  else
    @message='Access denied!'
    erb :index
  end

end