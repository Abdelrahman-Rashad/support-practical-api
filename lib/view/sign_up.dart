import 'package:flutter/material.dart';

import '../core/constants/constant.dart';
import '../core/data_provider/remote/dio_helper.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController firstcontroller=TextEditingController();
  TextEditingController lastcontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  final formkey=GlobalKey<FormState>();

  @override
  void initState() {
    DioHelper.init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: firstcontroller,
                  decoration:const InputDecoration(
                    border:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'First Name'
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty) {
                      return 'Enter your first name';
                    }
                  },
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  controller: lastcontroller,
                  decoration:const InputDecoration(
                    border:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'Last Name'
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty) {
                      return 'Enter your last name';
                    }
                  },
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  controller: emailcontroller,
                  decoration:const InputDecoration(
                    border:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'email'
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty) {
                      return 'Enter your email';
                    }
                  },
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  controller: passwordcontroller,
                  decoration:const InputDecoration(
                    border:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'password'
                  ),
                  validator: (value){
                    if(value==null||value.isEmpty) {
                      return 'Enter your password';
                    }
                  },
                ),
                ElevatedButton(onPressed: ()async{
                  if(formkey.currentState!.validate()){
                    
                   /* var data=await DioHelper.postData(endpoint: SIGNUP,body: {
                      "firstName": firstcontroller.text.toString(),
                      "lastName": lastcontroller.text.toString(),
                      "email": emailcontroller.text.toString(),
                      "password": passwordcontroller.text.toString()
                    });
                    print(data);*/
                  }
                }, child: Text("Sign in"))
              ],
          ),
            )),
        )
        ),
    );
  }
}