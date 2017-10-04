class BankAccount
	attr_reader :account_number, :checking_balance, :saving_balance
	@interest_rate
	@@acounts = 0
	
	def initialize
		set_account_number
		@checking_balance = 0
		@saving_balance = 0
		@interest_rate = 0.01
		@@acounts += 1
	end
	
	def depositToSavings amount
		@saving_balance += amount
	end
	
	def depositToChecking amount
		@checking_balance += amount
	end
	
	def transferToSavings amount
		return [false, "error insuficient funds"] if amount > @checking_balance
		@checking_balance -= amount
		@saving_balance += amount
		return [true, "transaction complete"]
	end
	
	def transferToChecking amount
		return [false,"error insuficient funds"] if amount > @saving_balance
		@saving_balance -= amount
		@checking_balance += amount
		return [true, "transaction complete"]
	end
	
	def withdraw amount
		return [false, "error insuficient funds"] if amount > @checking_balance
		@checking_balance -= amount
		return [true, "transaction complete"]
	end
	def total_balance
		@checking_balance + @saving_balance
	end
	
	def account_information
		"Account ##{@account_number}\nTotal Balance: $#{total_balance}\nChecking Account Balance: $#{@checking_balance}\nSavings Account Balance: $#{@saving_balance}\nInterest rate: #{@interest_rate*100}%\n"
	end
	
	private
		def set_account_number
			@account_number = rand(100...1000)
		end
end
puts "#############\n(Deposited $100)"
my_bank = BankAccount.new()
puts my_bank.depositToChecking(100)
puts my_bank.account_information
puts "#############\n(Withdrew $10)"
result, message = my_bank.withdraw 10
puts message unless result
puts my_bank.account_information
puts "#############\n(Withdrew $101)"
result, message = my_bank.withdraw 101
puts message unless result
puts my_bank.account_information
puts "#############\n(transfered $30 to savings)"
my_bank.transferToSavings 30
puts my_bank.account_information
puts "#############\n(tried set_account_number)"
begin
	my_bank.set_account_number 6969 #lolol
rescue
	puts "nice try, get rekt hacker"
end

puts my_bank.account_information
puts "#############"