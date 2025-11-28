import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        title: Text("SignUp Page"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.amber,
      ),
      backgroundColor: Colors.orange[200],
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2),
                    labelText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? "Please enter your name" : null,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mark_email_unread),
                    labelText: "Enter your email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Email is required";
                    final emailRegex = RegExp(
                        r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$');
                    if (!emailRegex.hasMatch(value)) return "Enter valid email";
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(_isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: "Enter your password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Enter your password";
                    final passwordRegex = RegExp(
                        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%^&*(),.?":{}|<>]).{8,}$');
                    if (!passwordRegex.hasMatch(value))
                      return "Password must be 8+ chars, include uppercase, lowercase, number & special char";
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.confirmation_num),
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Please confirm your password";
                    if (value != _passwordController.text)
                      return "Passwords do not match";
                    return null;
                  },
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // All validations passed
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Signup Successful")),
                      );
                    }
                  },
                  child: Text("Sign Up"),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: .center,
                  children: [Text("Already have an Account",style: TextStyle(fontSize: 20),),
                  Text("?Login",style: TextStyle(color: Colors.blue,fontSize: 20),)
                  ],
                ),
                
                 SizedBox(height: 20,), 
             TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.golf_course),
                label: Text("Continue with Google"),
                border: OutlineInputBorder()
              ),
             ),
               SizedBox(height: 20,), 
             TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.golf_course),
                label: Text("Continue with MicroSoft account"),
                border: OutlineInputBorder()
              ),
             )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
