require './lib/start'

class Input_sender
	def start
		input = (print '> '), gets
		process_request(input)
		# repl = Repl.new(input)
		# repl.start
	end

	def process_request(request)
		clear_request = request.last.rstrip
		send_request(clear_request)
	end

	def send_request(processed_request)
		repl = Repl.new(processed_request)
		repl.start
	end
end