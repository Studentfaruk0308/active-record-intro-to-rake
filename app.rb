require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "/home/faruk/Development/Code/Phase-3/active-record-intro-to-rake/artists.sqlite"
  )

  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS artists (
    id INTEGER PRIMARY KEY,
    name TEXT,
    genre TEXT,
    age INTEGER,
    hometown TEXT
    )
  SQL
  
  ActiveRecord::Base.connection.execute(sql)