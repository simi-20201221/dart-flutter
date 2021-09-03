class BankAccount {
  BankAccount(
    this._balance, {
    required this.accountHolder,
  });

  final String accountHolder;
  double _balance;

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  bool withDraw(double amount) {
    var isDraw = true;

    if (_balance < amount) {
      isDraw = false;
    }

    return isDraw;
  }
}
