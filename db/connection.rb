ActiveRecord::Base.establish_connection({
  database: 'pokenatra',
  adapter: 'postgresql'
})

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
