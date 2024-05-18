import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  String name = "";
  String email = "";
  String password = "";
  String passwordConfirm = "";

  void register() {
    if (formKey.currentState!.validate()) {
      // ma'lumotlarni saqlaymiz va ro'yxatdan o'tkazamiz
      formKey.currentState!.save();

      Map<String, dynamic> user = {
        "name": name,
        "email": email,
        "password": password,
        "passwordConfirm": passwordConfirm,
      };

      Navigator.of(context).pop(user);
    }
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Iltimos ism kiriting";
    } else if (value.length < 4) {
      return "Iltimos uzunroq ism kiriting";
    }

    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Iltimos elektron pochta kiriting";
    } else if (!value.contains("@") ||
        !value.substring(value.indexOf("@")).contains(".")) {
      return "To'g'ri elektron pochta kiriting";
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Iltimos parol kiriting";
    } else if (value.length < 8) {
      return "Iltimos eng kamida 8ta element kiriting";
    }

    return null;
  }

  String? validatePasswordConfirm(String? value) {
    if (value == null || value.isEmpty) {
      return "Iltimos parolni tasdiqlang";
    } else if (value != passwordController.text) {
      return "Parollar mos kelmadi";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            CupertinoIcons.arrow_left_circle_fill,
            color: Color.fromARGB(255, 212, 210, 210),
            size: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Create your account for your schedule",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Youre name",
                    hintStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.person_outline_sharp,
                      size: 30,
                    ),
                  ),
                  validator: validateName,
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      name = newValue;
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Your Email",
                    hintStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 30,
                    ),
                  ),
                  validator: validateEmail,
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      email = newValue;
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "************",
                      suffixIcon: Icon(CupertinoIcons.eye_slash),
                      hintStyle:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.key,
                        size: 30,
                      )),
                  validator: validatePassword,
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      password = newValue;
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "************",
                    hintStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.key,
                      size: 30,
                    ),
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                  ),
                  validator: validatePasswordConfirm,
                  onSaved: (newValue) {
                    if (newValue != null && newValue.isNotEmpty) {
                      passwordConfirm = newValue;
                    }
                  },
                  onFieldSubmitted: (value) {
                    register();
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      "You have an account? ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Sign in here"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: const Text("Log in"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/imgapp.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
