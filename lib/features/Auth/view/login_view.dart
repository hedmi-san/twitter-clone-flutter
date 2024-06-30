import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/constants.dart';
import '../widgets/auth_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsConstants.twitterLogo,
                    color: Colors.blue,
                    height: 35,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.34,
              ),
              Column(
                children: [
                  const Auth_Field(
                    input: 'Name',
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),
                  const Auth_Field(input: 'Email'),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.sizeOf(context).width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Done'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account ?'),
                  TextButton(onPressed: () {}, child: const Text('Login'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
