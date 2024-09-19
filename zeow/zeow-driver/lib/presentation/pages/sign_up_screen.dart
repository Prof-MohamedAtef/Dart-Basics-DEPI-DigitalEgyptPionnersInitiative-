import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeow_driver/presentation/states/auth_states.dart';
import 'package:zeow_driver/presentation/viewmodel/auth_viewmodel.dart';

import '../widgets/auth_custom_row_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String id = 'sign_up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Sign Up'),
      ),
      body: Consumer<AuthViewModel>(builder: (context, authViewModel, child) {
        if (authViewModel.state is AuthLoadingState) {
          return const Center(
              child: CircularProgressIndicator(
            backgroundColor: Colors.yellow,
            color: Colors.pink,
          ));
        } else if (authViewModel.state is AuthSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Navigator.pushNamed(
            //     context, AppRoutes.signInScreen); // Navigate after success
          });
          return const Center(child: Text("Sign up successful!"));
        } else if (authViewModel.state is AuthFailureState) {
          return Center(
            child: Text((authViewModel.state as AuthFailureState).message),
          );
        } else {
          return signUpForm(authViewModel);
        }
      }),
    );
  }

  Widget signUpForm(AuthViewModel authViewModel) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Please Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            title: 'email',
            onChanged: (value) {
              email = value;
            },
            obscureText: false,
            hint: 'Enter Your email',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            title: 'password',
            onChanged: (val) {
              password = val;
            },
            obscureText: true,
            hint: 'Enter Your password',
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () async {
              authViewModel.signUpWithEmail(email.toString(), password.toString());
            },
            title: "Sign Up",
          ),
          const SizedBox(
            height: 5,
          ),
          AuthCustomRowWidget(
            text1: 'Already have An Account ?',
            text2: 'Sign In',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ));
  }
}
