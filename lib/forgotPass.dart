import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:formdesign/componnent/reusabulComponnent.dart';

class ForgotPass extends StatelessWidget {
var formKey = GlobalKey<FormState>();
var EmailControntroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 100),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              pageTitle(titlePage: "Forgot Password"),
              SizedBox(height: 20,),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Augue turpis orci enim mi. Varius tincidunt enim diam mus quis morbi ",
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
              ),
              SizedBox(height: 50,),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    defaultTextFormFeild(
                        controller: EmailControntroller,
                        titleLable: "E-mail",
                        titleHint: "E-mail",
                        type: TextInputType.emailAddress),

                    SizedBox(height: 20,),
                    Button(
                        onPressed: (){
                          if(formKey.currentState?.validate()??false){
                              print(EmailControntroller.text);
                          };

                        },
                        buttonTitle: "Send",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
