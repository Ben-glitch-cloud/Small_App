require 'pg'

class Notes 
    def notes_title
        connection = PG.connect(dbname: 'notes_manager') 
        result = connection.exec('SELECT * FROM notes_taken') 
        result.map { |note| note['title'] }   
    end  

    def notes_des
        connection = PG.connect(dbname: 'notes_manager') 
        result = connection.exec('SELECT * FROM notes_taken') 
        result.map { |note| note['description'] } 
    end
end 