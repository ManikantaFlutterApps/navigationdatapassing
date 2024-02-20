import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {

  final String firstName,lastName,mobileNumber;

  const SecondScreen({super.key,required this.firstName , required this.lastName,required this.mobileNumber});

  

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController mobileNumberController = TextEditingController();



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            'SecondScreen',
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

              inputFieldData(widget.firstName,"Enter FirstName",false,),

              const SizedBox(height: 20,),

              inputFieldData(widget.lastName,"Enter LastName",false),

              const SizedBox(height: 20,),

              inputFieldData(widget.mobileNumber,"Enter MobileNumber",false),

              const SizedBox(height: 20,),

              nextButton(context),




            ],
          ),
        ),
      ),
    );
  }
}

Widget inputFieldData(String text,String hintText,bool isEnabled) {

  return Container(
    width: double.infinity,
    margin: const EdgeInsets.all(15.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent)
    ),
    child: Text(text),
  );
}

Widget nextButton(BuildContext context) {

  return ElevatedButton(onPressed: (){

    Navigator.pop(context);


  }, child: const Text("PREVIOUS"));
}