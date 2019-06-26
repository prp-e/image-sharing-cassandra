require 'sinatra'

#This is just a test for basic image sharing system, without a database. 

get '/' do 
    erb :form 
end 

post '/upload' do 
    @filename = params[:file][:filename] 
    file = params[:file][:tempfile] 

    File.open("./public/#{@filename}", 'wb') do |f| 
        f.write(file.read)
    end 

    erb :show 
end 
