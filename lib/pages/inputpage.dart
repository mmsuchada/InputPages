import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Input 642021133"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                usernameText(),
                const SizedBox(height: 16,),
                passwordText(),
                const SizedBox(height: 16,),
                ElevatedButton.icon(onPressed: (){
                  debugPrint("mild");
                  if(_formKey.currentState!.validate()){
                    debugPrint("successful");
                  }
                }, 
                icon: const Icon(Icons.login_sharp), 
                label: const Text("เข้าสู่ระบบ"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField usernameText() {
    return TextFormField(
            validator: (value){
              if(value!.isEmpty){
                return "กรุณาใส่ชื่อ";
              }
              return null;
            },
            controller: nameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.person_2),
              labelText: "Username",
              hintText: "ใส่ชื่อผู้ใช้",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 163, 81, 170)),
              ),


              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 163, 81, 170)),
                borderRadius: BorderRadius.all(Radius.circular(20))
              )
            ), 
            onChanged: (value){ 
              setState(() {});
            },
          );
  }
  TextFormField passwordText() {
    return TextFormField(
      validator: (value){
              if(value!.isEmpty){
                return "กรุณาใส่รหัสผ่าน";
              }
              return null;
            },
            controller: passController,
            
            decoration: const InputDecoration(
              icon: Icon(Icons.key),
              labelText: "Password",
              hintText: "ใส่รหัสผ่าน",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 163, 81, 170)),
              ),


              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 163, 81, 170)),
                borderRadius: BorderRadius.all(Radius.circular(20))
              )
            ), 
            onChanged: (value){ 
              setState(() {});
            },
          );
  }
}