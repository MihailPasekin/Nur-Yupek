class User {
  String email;

  User(this.email);

  factory User.defaultUser() {
    return User("");
  }
}
