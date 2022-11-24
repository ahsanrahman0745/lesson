import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0,left: 10,right: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    controller: valueController,
                    cursorColor: Colors.black,
                    // keyboardType: TextInputType.,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Input Value',
                      icon: Icon(Icons.input),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                setState(() {
                  valueController=valueController;
                  Fluttertoast.showToast(
                      msg: valueController.text,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                });
              }, child: const Text("onPress")),
              const SizedBox(height: 10,),
              Text(valueController.text),

            ],
          ),
        )
      ),
    );
  }
}
