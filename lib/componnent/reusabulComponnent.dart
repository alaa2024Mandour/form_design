

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

Widget pageTitle ({
  required String titlePage,
})=> Text('$titlePage',
    style:
    TextStyle(color: Color(0xff152534), fontSize: 24 , fontWeight: FontWeight.w900));


Widget Button({
  required Function onPressed,
  required String buttonTitle,
}) => GestureDetector(
      onTap: (){
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xff0C1C2E), borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            "$buttonTitle",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );


Widget defaultTextFormFeild(
    {required TextEditingController controller,
      required String titleLable,
      required String titleHint,
      bool isObscure = false,
      required TextInputType type,
    }) => TextFormField(
      controller: controller,
      keyboardType: type,
      textInputAction: TextInputAction.done,
      onChanged: (value) {
        _formKey.currentState?.validate();
      },
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: "$titleLable",
        hintText: "$titleHint",
      ),
      validator: (value) {
        if (value!.isEmpty) return 'Field is required.';
        return null;
      },
    );

Widget haveAccount ({
  required Function onPressed,
  required  String text,
  required  String textTitle,
}) => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      "$text",
      style: TextStyle(
        color: Colors.black
      )
      // Theme.of(context)
      //     .textTheme
      //     .bodySmall
      //     ?.copyWith(color: Colors.black),
    ),
    TextButton(
      onPressed: () { onPressed();},
      child: Text(
        '$textTitle',
        style: TextStyle(color: Color(0xff0C1C2E)),
      ),
    )
  ],
);
