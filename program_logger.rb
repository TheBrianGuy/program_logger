def log(block_description, some_proc)
	puts "Beginning " + block_description + '"...'
	puts '..."' + block_description + ' finished, returning:'
	puts some_proc.call
end

log 'outer block' do
	
		log 'some little block' do
			return 5
		end

		log 'yet another block' do
			return "I like Thai food!"
		end

	return false
end

