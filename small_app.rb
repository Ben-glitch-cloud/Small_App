require 'sinatra/base'   
require './lib/notes' #<-- needs to find the file before out putting it. 

class BookmarkManager < Sinatra::Base  
    get '/' do   
        current_notes = Notes.new 
        a = current_notes.notes_title 
        b = current_notes.notes_des 
        @notes = a.zip(b)
        erb :'notes/home'
    end 

    run! if app_file == $0
end 