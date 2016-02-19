#encoding:utf-8
require 'sinatra'

get '/' do
  erb :index
end

get '/aaa.txt' do
  @file=[]
  f=File.open "aaa.txt", 'r'
  while line=f.gets do
    @file << line.chomp
  end
  f.close
  erb :txts
end

get '/contact' do
  under_construction
end
get '/faq' do
  under_construction
end
get '/something' do
  under_construction
end


post '/' do
  @name=params[:name]
  @pass=params[:pass]
  f=File.open 'aaa.txt', 'a'
  f.write "Name: #{@name} Password: #{@pass} \n"
  f.close
  if @name=='admin' && @pass=='12345'
    erb :welcome
  else
    @message='Access denied!'
    erb :index
  end

end

def under_construction
  @title='Under construction'
  @message='Страница в разработке'
  erb :message
end