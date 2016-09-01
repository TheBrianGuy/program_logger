def log(block_description, &some_proc)
	puts 'Beginning "' + block_description + '"...'
	response = some_proc.call
	puts '..."' + block_description + ' finished, returning:'
  puts response
end

log 'outer block' do
	
		log 'some little block' do
			5
		end

		log 'yet another block' do
			"I like Thai food!"
		end

	false
end

