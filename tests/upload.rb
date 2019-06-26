require 'sinatra'

#This is just a test for basic image sharing system, without a database. 

get '/' do 
    erb :form 
end 