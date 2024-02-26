import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formdesign/componnent/reusabulComponnent.dart';

class Personal extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var phoneController = TextEditingController();
  var nameController = TextEditingController();
  var addressController = TextEditingController();

  /*===========Form Key===========*/
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 100),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              pageTitle(titlePage: 'Personal details'),
              SizedBox(height: 20,),
              Form(
                key: formKey,
                  child: Column(
                    children: [
                      defaultTextFormFeild(
                          controller: emailController,
                          titleLable: "E-mail",
                          titleHint: "E-mail",
                          type: TextInputType.emailAddress),
                      SizedBox(height: 6,),
                      defaultTextFormFeild(
                          controller: passController,
                          titleLable: "Password",
                          titleHint: "Password",
                          type: TextInputType.visiblePassword),
                      SizedBox(height: 6,),
                      defaultTextFormFeild(
                          controller: phoneController,
                          titleLable: "Phone",
                          titleHint: "Phone",
                          type: TextInputType.phone),
                      SizedBox(height: 6,),
                      defaultTextFormFeild(
                          controller: nameController,
                          titleLable: "Name",
                          titleHint: "Name",
                          type: TextInputType.name),
                      SizedBox(height: 6,),
                      defaultTextFormFeild(
                          controller: addressController,
                          titleLable: "Address",
                          titleHint: "Address",
                          type: TextInputType.text),
                      SizedBox(height: 30,),
                      Button(
                          onPressed: (){
                            if(formKey.currentState?.validate()??false){
                              Navigator.pop(context);
                            };

                          },
                          buttonTitle: "Sign Up")
                    ],
                  )
              ),
              SizedBox(height:120),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    haveAccount(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        text: "Alredy have an account ? ",
                        textTitle: "Sign in")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
