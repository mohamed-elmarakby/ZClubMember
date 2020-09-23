import 'package:flutter/material.dart';
import 'package:zclub/screens/signupInstallments_screen.dart';
import 'package:zclub/screens/signupPackages_screen.dart';
import 'package:zclub/theme.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController idController = TextEditingController();
TextEditingController phoneController = TextEditingController();

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      width: MediaQuery.of(context).size.width * 0.64,
                      height: MediaQuery.of(context).size.width * 0.64,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'assets/images/blacklogo.jpg',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'التسجيل',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.titleColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: AppColors.titleColor, fontSize: 14),
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.hintColor,
                    decoration: InputDecoration(
                      hintText: 'الاسم',
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
                  TextField(
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
                  TextField(
                    style: TextStyle(color: AppColors.titleColor, fontSize: 14),
                    controller: phoneController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.hintColor,
                    decoration: InputDecoration(
                      hintText: 'رقم الهاتف',
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
                  TextField(
                    style: TextStyle(color: AppColors.titleColor, fontSize: 14),
                    controller: idController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.hintColor,
                    decoration: InputDecoration(
                      hintText: 'رقم الهوية',
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
                  TextField(
                    obscureText: true,
                    style: TextStyle(color: AppColors.titleColor, fontSize: 14),
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SignUpInstallment()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.075,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: AppColors.titleColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'تقسيط',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.inButtonColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SignUpPackages()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.075,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: AppColors.titleColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "باقات",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.inButtonColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
