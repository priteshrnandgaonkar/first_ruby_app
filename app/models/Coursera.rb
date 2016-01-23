class Coursera
	include HTTParty
	base_uri  "https://api.coursera.org/api/catalog.v1/courses"
	default_params fields: "smallIcon,shortDescription", q: "search"
	format :json

	def self.fetch term
		get("", query: { query: term})["elements"]  #get is an HTTParty method which accepts url as first argument and second argument as a query parameter
													# Since we have already given the baseuri we do not need to give first parameter
													# Second parameter is an extra parmeter which needs to be passed other than the default ones
													# It accepts the extraparameters in a hash for the key "query" which is related to HTTParty
													# query contains hash for extra parameters, here extra parameters need is query:
	end
end
