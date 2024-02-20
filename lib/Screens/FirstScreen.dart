import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_demo/Screens/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController mobileNumberController = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            'FirstScreen',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.pinkAccent),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const SizedBox(height: 20,),

              inputFieldData(firstNameController,"Enter FirstName"),

              const SizedBox(height: 20,),

              inputFieldData(lastNameController,"Enter LastName"),

              const SizedBox(height: 20,),

              inputFieldData(mobileNumberController,"Enter MobileNumber"),

              const SizedBox(height: 20,),

              nextButton(context,firstNameController,lastNameController,mobileNumberController),




            ],
          ),
        ),
      ),
    );
  }
}

Widget inputFieldData(TextEditingController textEditingController,String hintText) {

  return TextField(
    controller: textEditingController,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

Widget nextButton(BuildContext context, TextEditingController firstNameController, TextEditingController lastNameController, TextEditingController mobileNumberController) {

  return ElevatedButton(onPressed: (){

    var firstNameData = firstNameController.text;
    var lastNameData = lastNameController.text;
    var mobileNumberData = mobileNumberController.text;

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(firstName : firstNameData,lastName : lastNameData , mobileNumber : mobileNumberData)));

  }, child: const Text("NEXT"));
}