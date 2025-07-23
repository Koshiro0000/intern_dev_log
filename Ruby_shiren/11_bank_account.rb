# `BankAccount.new(initial_balance)` でインスタンスを生成し、`deposit(amount)`, `withdraw(amount)`, `balance` メソッドを実装。
# `withdraw` 時に残高不足なら独自例外クラス`InsufficientFunds < StandardError` を `raise` する。
# クラスの属性などは適宜必要に応じて定義してほしい

class InsufficientFunds < StandardError; end

# 預け入れ
class BankAccount
    def initialize(initial_balance = 0)
    end

# 引き出し
    def deposit(amount)
    end

# 残高確認
    def withdraw(amount)
    end

# 残高表示
    def balance
    end
end


