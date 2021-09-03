class Credential {
  const Credential({
    this.email = '',
    this.password = '',
  });

  final String email;
  final String password;

  Credential copyWith({
    String? email,
    String? password,
  }) {
    return Credential(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() => 'Credential($email, $password)';
}
