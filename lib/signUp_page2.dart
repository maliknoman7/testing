import 'package:flutter/material.dart';

class mysignup_page extends StatefulWidget {
  const mysignup_page({super.key});

  @override
  State<mysignup_page> createState() => _mysignup_pageState();
}

class _mysignup_pageState extends State<mysignup_page> {
  @override
  bool _isPasswordVisible=false;
  final _nameController=TextEditingController();
  final _EmailContrloer=TextEditingController();
   final _passwordController=TextEditingController();
    final _confirmPasswordController=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: CircleAvatar(maxRadius: .infinity,minRadius: .infinity,backgroundColor: Colors.green,child: Icon(Icons.person),),
      backgroundColor: Colors.orange,
      title: Text("SignUp"),
      
      ),
      backgroundColor: Color.fromARGB(70, 14, 50, 100),
      body: Padding(padding: .all(20),
      child: Column(
        children: [
          Row(children: [
            Expanded(
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: Text("Enter your name"),
                  border: OutlineInputBorder(borderRadius:.circular(20)),
             
                ),
                validator:(value) => value!.isEmpty?"please enter your name":null,
                
              ),
            )
          ],), SizedBox(height: 20,),
           Row(children: [
            Expanded(
              child: TextFormField(
                controller: _EmailContrloer,
             keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mark_email_unread),
                  label: Text("Enter your Email"),
                  border: OutlineInputBorder(borderRadius:.circular(20)),
             
                ),
               validator: (value) {
                 if(value==null||value.isEmpty) return "Email is required";
                 final emailRegex = RegExp(r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\$');
              if(!emailRegex.hasMatch(value))return "Enter valid email";
               },
                
              ),
            )
          ],),
          SizedBox(height: 20,),
          Row(children: [
            Expanded(
              child: TextFormField(
                controller: _passwordController,
                obscureText:_isPasswordVisible ,
                
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                   suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _isPasswordVisible=!_isPasswordVisible;
                    });
                   }, icon: Icon(_isPasswordVisible?Icons.visibility_off:Icons.visibility
                   )),
                  label: Text("Enter your passward"),
                  border: OutlineInputBorder(borderRadius:.circular(20),
                
    
                ),),
               validator: (value) {
                 if(value!.isEmpty||value==null)return"enter your passward";
                final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%^&*(),.?":{}|<>]).{8,}$'
    );
                 if(!passwordRegex.hasMatch(value))
                 return" Password must be 8+ chars, include uppercase, lowercase, number & special char";
                 return null;
               },
                
              ),
            )
          ],), SizedBox(height: 20,),
          Row(children: [
            Expanded(
              child: TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.confirmation_num),
                  label: Text("Confirm Passward"),
                  border: OutlineInputBorder(borderRadius:.circular(20)),
             
                ),
              validator: (value) {
                if(value!.isEmpty||value==null)return"Nothing enter for confirmaion";
                if(_passwordController.value==_confirmPasswordController.value)
                return("The passward is matched");
              },
                
              ),
            )
          ],),
        ],
      ),
      
      )
    );
  }
}