import 'package:flutter/material.dart';

class setPassword extends StatefulWidget {
  const setPassword({super.key});

  @override
  State<setPassword> createState() => _setPasswordState();
}

class _setPasswordState extends State<setPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Widget buildBack() {
      return Container(
        alignment: Alignment.bottomLeft,
        child: ElevatedButton(
          onPressed: () => print('back'),
          child: const Text(
            '< Back',
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    }

    Widget buildLetterSet() {
      return const Text(
        'Set password',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      );
    }

    Widget buildLetterSetYour() {
      return const Text(
        'Set your password',
        style: TextStyle(color: Colors.grey),
      );
    }

    Widget buildEnterPassword() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              obscureText: _obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  )),
            ),
          ),
        ),
      );
    }

    Widget buildConfirmPassword() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              obscureText: _obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Confirm Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  )),
            ),
          ),
        ),
      );
    }

    Widget buildLetter() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Atleast 1 number or a special character',
              style: TextStyle(color: Colors.grey),
            )),
      );
    }

    Widget buildRegister() {
      return InkWell(
        onTap: () => print('Register'),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 32, 146, 36),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                  )
                ]),
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          buildBack(),
          const SizedBox(
            height: 20,
          ),
          buildLetterSet(),
          buildLetterSetYour(),
          const SizedBox(
            height: 30,
          ),
          buildEnterPassword(),
          const SizedBox(
            height: 20,
          ),
          buildConfirmPassword(),
          const SizedBox(
            height: 10,
          ),
          buildLetter(),
          const Spacer(),
          buildRegister(),
        ],
      )),
    );
  }
}