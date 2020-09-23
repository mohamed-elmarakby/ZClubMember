import 'package:flutter/material.dart';
import 'package:zclub/screens/singup_screen.dart';
import 'package:zclub/theme.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(21.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: MediaQuery.of(context).size.width * 0.65,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'assets/images/blacklogo.jpg',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'الدخول',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.titleColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextField(
                    enabled: true,
                    style: TextStyle(color: AppColors.titleColor, fontSize: 14),
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: AppColors.hintColor,
                    decoration: InputDecoration(
                      hintText: 'البريد الالكتروني',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.hintColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.hintColor),
                      ),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                          borderSide: BorderSide(color: AppColors.hintColor)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: TextField(
                      obscureText: true,
                      style:
                          TextStyle(color: AppColors.titleColor, fontSize: 14),
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      cursorColor: AppColors.hintColor,
                      decoration: InputDecoration(
                        hintText: 'كلمة المرور',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.hintColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.hintColor),
                        ),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(1)),
                            borderSide: BorderSide(color: AppColors.hintColor)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9.0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.075,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.popupsColor,
                      ),
                      child: Center(
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xfff1d000),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: AppColors.popupsColor,
                        ),
                        child: Center(
                          child: Text(
                            "تسجيل حساب جديد",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xfff1d000),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
