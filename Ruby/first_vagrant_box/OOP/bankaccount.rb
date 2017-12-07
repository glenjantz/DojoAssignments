class BankAccount
    attr_reader :account_number, :checking, :savings
    @@numofaccount = 0
    def initialize
      @checking = 0
      @savings = 0
      @interestrate = 0.01
      @@numofaccount += 1
      @account_number = create_account
    end
    # def display_account_number
    #   puts "your account number is #{@account_number}"   #  .account_number does this
    #   self
    # end
    def deposit account, amount
      if account.downcase == "checking"
        @checking += amount
      elsif account.downcase == "savings"
        @savings += amount
      else
        puts "invalid account"
      end
      self
    end
    def withdraw account, amount
      if account.downcase == "checking"
        if @checking - amount < 0
          puts "insufficent funds you have #{checking} dollars"
        else
          @checking -= amount
        end
      elsif account.downcase == "savings"
        if @savings - amount < 0
          puts "insufficent funds you have #{savings} dollars"
        else
          @savings -= amount
        end
      end
      self
    end
    def total
      puts "you have #{checking} in your checking and #{savings} in your savings and a total of #{@checking+@savings}"
    end
    def account_information
      puts "your account number is #{@account_number}\n total money is #{@checking+@savings}\n checking account has #{@checking}\n savings account has #{@savings}\n interest rate is #{@interestrate}"
    end
    private
      def create_account
        Array.new(10).map { rand(1..9) }.join
      end
end
b = BankAccount.new
puts b.account_number
puts b.checking
puts b.savings
b.deposit("savings", 100)
puts b.savings
b.withdraw("savings", 100)
puts b.savings
puts b.total
b.account_information
