require 'sinatra/base' 

class BookmarkManger < Sinatra::Base  
    get '/' do
        'hello World'
    end 

    run! if app_file == $0
end 