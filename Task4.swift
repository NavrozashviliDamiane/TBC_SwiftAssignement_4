// struct-ის განსაზღვრა შესაბამისი ელემენტებით
struct BankAccount {
    var holderName: String 
    var accountNumber: String 
    var balance: Double 

    // ბანკის ექაუნთის ინიციალიზაცია 
    init(holderName: String, accountNumber: String, initialBalance: Double) {
        self.holderName = holderName
        self.accountNumber = accountNumber
        self.balance = initialBalance
    }

    // ფუნქცია რომელიც განსაზღვრავს დეპოზიტის ლოგიკას
    mutating func deposit(amount: Double) {
        guard amount > 0 else {
            print("Error: Deposit amount must be greater than 0.")
            return
        }
        balance += amount
        print("Deposit successful. New balance: \(balance)")
    }

    // ფუნქცია რომელიც განსაზღვარვს თანხის განაღდების ლოგიკას
    mutating func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Error: Withdrawal amount must be greater than 0.")
            return
        }

        guard amount <= balance else {
            print("Error: Insufficient funds. Cannot withdraw \(amount). Current balance: \(balance)")
            return
        }

        balance -= amount
        print("Withdrawal successful. New balance: \(balance)")
    }
}

// ექაუნთის ობიექტის შექმნა
var bankAccount = BankAccount(holderName: "damiane navrozashvili", accountNumber: "123456789", initialBalance: 1000.0)

// თანხის განაღდებისა და დეპოზიტების ოპერაციების განხორციელება
bankAccount.deposit(amount: 500.0) 
bankAccount.withdraw(amount: 800.0)  
bankAccount.withdraw(amount: 300.0)  

// საბოლოო შედეგის დაპრინტვა
print("Final balance: \(bankAccount.balance)")
