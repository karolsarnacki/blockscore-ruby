module BlockScore
	class QuestionSet

		def initialize(client)
			@client = client
		end

		def create(verification_id, options = {})
			body = (options.include? :body) ? options[:body] : {}
			body[:verification_id] = verification_id

			response = @client.post '/questions', body
		end

		# 
		# '/questions/score' POST
		#
		# verification_id - 
		# question_set_id - 
		# answers - 
		def score(verification_id, question_set_id, answers)
			
			body = { 
					 verification_id: verification_id,
					 question_set_id: question_set_id,
					 answers: answers
			}

			response = @client.post "/questions/score", body
		end

		# 
		# /questions/:id POST
		#
		# question_set_id -
		# verification_id -
		def retrieve(question_set_id, verification_id)
			body = Hash.new
			body[:verification_id] = verification_id

			response = @client.post "/questions/#{question_set_id.to_s}", body
		end
	end
end