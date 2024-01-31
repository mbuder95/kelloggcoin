# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

Ben_Balance = 0
Brian_Balance = 0
Evan_Balance = 0
Anthony_Balance = 0


for transaction in blockchain
  from_user = transaction["from_user"]
  to_user = transaction["to_user"]
  amount = transaction["amount"]

if from_user == "ben" 
   Ben_Balance = Ben_Balance - amount
elsif from_user == "brian" 
   Brian_Balance = Brian_Balance - amount
elsif from_user == "evan" 
  Evan_Balance = Evan_Balance - amount
elsif from_user == "anthony" 
   Anthony_Balance = Anthony_Balance - amount
end
if to_user == "ben" 
   Ben_Balance = Ben_Balance + amount
elsif to_user == "brian" 
   Brian_Balance = Brian_Balance + amount
elsif to_user == "evan" 
   Evan_Balance = Evan_Balance + amount
elsif to_user == "anthony" 
   Anthony_Balance = Anthony_Balance + amount
end
end


puts "Ben's KelloggCoin Balance is #{Ben_Balance}"
puts "Brian's KelloggCoin Balance is #{Brian_Balance}"
puts "Evan's KelloggCoin Balance is #{Evan_Balance}"
puts "Anthony's KelloggCoin Balance is #{Anthony_Balance}"


# used Chat GPT to get an idea of how the code can run. Took the basic "recipie" and converted the code 
# so that it's based on the concepts we learned in class
# balances = {}

# blockchain.each do |transaction|
# from_user = transaction["from_user"]
# to_user = transaction["to_user"]
# amount = transaction["amount"]

# # Update sender's balance (if not ICO transaction)
# if from_user
#   balances[from_user] ||= 0
#   balances[from_user] -= amount
# end

# # Update receiver's balance
# balances[to_user] ||= 0
# balances[to_user] += amount
# end

# # Print out the balances
# balances.each do |user, balance|
# puts "#{user.capitalize}'s KelloggCoin balance is #{balance}"
# end