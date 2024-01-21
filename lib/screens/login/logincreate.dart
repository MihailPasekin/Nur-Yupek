import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginCreated extends StatelessWidget {
  const LoginCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: Text(
                  "Создать аккаунт",
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ],
          ),
         const  LoginForm(),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Уже есть акаунт? " ,style: TextStyle(color:Color.fromARGB(218, 188, 187, 183),),),
           GestureDetector(
            onTap: () {},
            child: const Text("Войдите"),
          )
        ],
      ),
      const SizedBox(
        width: 20,
      )
        ],
      ),
    ));
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userController = TextEditingController();

  final userFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  void dispose() {
    userController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Имя пользователя",
                  style: TextStyle(fontSize: 18),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183)),
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    icon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                    hintText: "Видите имя пользователя",
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                  ),
                  focusNode: userFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  controller: userController,
                  onChanged: (val) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      userFocusNode.requestFocus();
                      return 'Пожалуйста, введите текст';
                    }
                    if (value.length < 6) {
                      userFocusNode.requestFocus();
                      return 'Имя не меньше 6 символов';
                    }
                  },
                ),
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 18),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183)),
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    icon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                    hintText: "Ваш email",
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                    filled: true,
                    fillColor: Colors.white54,
                  ),
                  focusNode: emailFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  onChanged: (val) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      emailFocusNode.requestFocus();
                      return 'Ведите текст';
                    }
                    return EmailValidator.validate(value)
                        ? null
                        : 'He правильный email';
                  },
                ),
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Пароль",
                  style: TextStyle(fontSize: 18),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  obscureText: _isObscured,
                  focusNode: passwordFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  controller: passwordController,
                  style: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183)),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                        padding: const EdgeInsetsDirectional.only(end: 12.0),
                        icon: _isObscured
                            ? const Icon(
                                Icons.visibility,
                                color: Color.fromARGB(218, 188, 187, 183),
                              )
                            : const Icon(Icons.visibility_off,
                                color: Color.fromARGB(218, 188, 187, 183)),
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        }),
                    hintText: 'Пароль',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                    icon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      passwordFocusNode.requestFocus();
                      return 'Пожалуйста, введите текст';
                    }
                    if (value.length < 6) {
                      passwordFocusNode.requestFocus();
                      return 'Пароль не меньше 6 символов';
                    }
                  },
                ),
              ),const Padding(padding: EdgeInsets.only(left: 15, right: 10), child:
               Text(
                "Пароль должен содержать 9 символов и хотя бы 1 заглавную букву.",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(218, 188, 187, 183)),
              ),),
              const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Подтвердить пароль",
                  style: TextStyle(fontSize: 18),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  obscureText: _isObscured,
                  focusNode: passwordFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  controller: passwordController,
                  style: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183)),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(218, 188, 187, 183)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    suffixIcon: IconButton(
                        padding: const EdgeInsetsDirectional.only(end: 12.0),
                        icon: _isObscured
                            ? const Icon(
                                Icons.visibility,
                                color: Color.fromARGB(218, 188, 187, 183),
                              )
                            : const Icon(Icons.visibility_off,
                                color: Color.fromARGB(218, 188, 187, 183)),
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        }),
                    hintText: 'Пароль',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                    icon: const Icon(
                      Icons.lock,
                      color: Color.fromARGB(218, 188, 187, 183),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      passwordFocusNode.requestFocus();
                      return 'Пожалуйста, введите текст';
                    }
                    if (value.length < 6) {
                      passwordFocusNode.requestFocus();
                      return 'Пароль не меньше 6 символов';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(218, 233, 176, 20)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Отлично')),
                      );
                    }
                  },
                  child: const SizedBox(
                    height: 40,
                    width: 220,
                    child: Text(
                      'Создать аккаунт',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ]));
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}
