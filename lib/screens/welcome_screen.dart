import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Logo
            Center(child: Image.asset('assets/images/nike.png', height: 40)),

            SizedBox(height: 12),

            // text
            _textWidget('Email'),

            SizedBox(height: 8),

            // Text Field
            _formFieldWidget('write your email'),

            SizedBox(height: 12),

            // text
            _textWidget('Password'),

            SizedBox(height: 8),

            // Text Field
            _formFieldWidget('write your password', isObscure: true),

            // Login button
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 8),

            Text('Forget Password?'),

            Row(
              children: [
                Divider(),
                Text('or'),
                Divider(),
              ],
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.black),
                icon: Icon(Icons.facebook, color: Colors.white),
                label: Text('Login with Facebook', style: TextStyle(color: Colors.white),),
              ),
            ),

            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Don\'t have an account? ', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _formFieldWidget(String hintText, {bool isObscure = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
