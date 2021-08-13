# your code goes here
class Person
	attr_reader :name, :bank_account, :hygiene, :happiness

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	# def name
	# 	@name
	# end

	# def bank_account
	# 	@bank_account
	# end

	def bank_account=(value)
		@bank_account = value
	end

	def hygiene=(value)
		if value > 10
			@hygiene = 10
		elsif value < 0
			@hygiene = 0
		else
			@hygiene = value
		end
	end

	def happiness=(value)
		if value > 10
			self.happiness = 10
		elsif value < 0
			self.happiness = 0
		else
			@happiness = value
		end
	end

	def clean?
		hygiene > 7
	end

	def happy?
		@happiness > 7
	end

	def get_paid(amount)
		self.bank_account = self.bank_account + amount
		"all about the benjamins"
	end

	def take_bath
		incr = @hygiene + 4
		self.hygiene=(incr)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		incr = @hygiene -3
		self.hygiene=(incr)
		incr2 = @happiness + 2
		self.happiness=(incr2)
		"♪ another one bites the dust ♫"
	end

	def call_friend(f)
		incr = self.happiness + 3
		self.happiness=(incr)
		incr2 = f.happiness + 3
		f.happiness=(incr2)
		"Hi #{f.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(p, t)
		if t == 'politics'
			incr = self.happiness - 2
			self.happiness=(incr)
			incr2 = p.happiness - 2
			p.happiness=(incr2)
			'blah blah partisan blah lobbyist'		
		elsif t == 'weather'
			incr = self.happiness + 1
			self.happiness=(incr)
			incr2 = p.happiness + 1
			p.happiness=(incr2)
			'blah blah sun blah rain'
		else
			"blah blah blah blah blah"
		end		
	end
end