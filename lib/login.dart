import 'package:flutter/material.dart';
import 'package:formdesign/personal.dart';

import 'componnent/reusabulComponnent.dart';
import 'forgotPass.dart';
// import 'res.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    pageTitle(titlePage: "Sign in"),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    defaultTextFormFeild(
                        controller: emailController,
                        titleLable: 'E-mail',
                        titleHint: 'Enter your Email',
                         type: TextInputType.emailAddress),
                    SizedBox(
                      height: 20,
                    ),
                    defaultTextFormFeild(
                        controller: passwordController,
                        titleLable: 'Password',
                        titleHint: 'Enter your password',
                        isObscure: true,
                        type: TextInputType.visiblePassword),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Button(
                          buttonTitle: "Login",
                          onPressed: () {
                            if(_formKey.currentState?.validate()??false){
                              print(emailController.text);
                              print(passwordController.text);
                            };
                          },),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute( builder: (context)=> ForgotPass()));
                      },
                      style: Theme.of(context).textButtonTheme.style,
                      child: const Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xff0C1C2E),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Text(
                            'Or',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  GestureDetector(
                    onTap: () {
                      onPressed(){};
                    },
                    child: Container(
                      width: double.infinity,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: Color(0xff0C1C2E)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                         " Log in with Facebook",
                          style: TextStyle(
                            color: Color(0xff0C1C2E),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                    // Button(
                    //     onPressed: () {},
                    //     buttonTitle: 'Log in with Facebook',
                    //     color: 000000,
                    //     textColor: 0xff0C1C2E)
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: haveAccount(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Personal()));
                    },
                    text: "Don't hava an account yet ? ",
                    textTitle: 'Sign up',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
