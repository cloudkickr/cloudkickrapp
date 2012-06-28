task :parser_shit do
	require 'csv'    

	CSV.foreach(routes.csv, :headers => true) do |row|
  	Routes.create!(row.to_hash)
	end
end

