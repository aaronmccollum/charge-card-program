def add_balance(current_balance, added)
    current_balance + added
end
  
def remove_balance(current_balance, subtracted)
    current_balance - subtracted
end
  
def get_balance(current_balance)
    current_balance
end
  
ADD_ANSWERS = ['add', 'add balance', 'add more']
REMOVE_ANSWERS = ['remove', 'remove balance']
GET_BALANCE = ['get balance', 'get current balance']
  
def card_machine(current_amount)
    puts "What would you like to do?"
    puts "Please type either 'ADD', 'REMOVE', or 'GET CURRENT BALANCE' to proceed."
    user_answer = gets.chomp.downcase
    
    if ADD_ANSWERS.include?(user_answer)
        puts "Excellent. How much would you like to add?"
        added_amount = gets.chomp.to_i
        new_total = add_balance(current_amount, added_amount)
        puts "Your new balance is #{new_total}."
    end
  
    if REMOVE_ANSWERS.include?(user_answer)
        puts "Excellent. How much would you like to remove?"
        removed_amount = gets.chomp.to_i
        new_total = remove_balance(current_amount, removed_amount)
        puts "Your new balance is #{new_total}."
    end
  
    if GET_BALANCE.include?(user_answer)
        puts "Your current balance is #{current_amount}."
    end
end
  
card_machine(500)