import 'package:flutter/material.dart';
import 'package:zclub/theme.dart';

class SignUpPackages extends StatefulWidget {
  @override
  SignUpPackagesState createState() => SignUpPackagesState();
}

class SignUpPackagesState extends State<SignUpPackages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'خيارات التقسيط',
                    style: TextStyle(
                      fontFamily: 'GESSMEDIUM',
                      fontSize: 24,
                      color: AppColors.titleColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.popupsColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CheckboxListTile(
                              checkColor: AppColors.titleColor,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: true,
                              onChanged: (value) {},
                              title: Text(
                                'سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 14,
                                  color: AppColors.titleColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              subtitle: Text(
                                'يضاف هنا خطة التقسيط لمدة سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 12,
                                  color: AppColors.normalText,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              checkColor: AppColors.titleColor,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: false,
                              onChanged: (value) {},
                              title: Text(
                                'سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 14,
                                  color: AppColors.titleColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              subtitle: Text(
                                'يضاف هنا خطة التقسيط لمدة سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 12,
                                  color: AppColors.normalText,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              checkColor: AppColors.titleColor,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: false,
                              onChanged: (value) {},
                              title: Text(
                                'سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 14,
                                  color: AppColors.titleColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              subtitle: Text(
                                'يضاف هنا خطة التقسيط لمدة سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 12,
                                  color: AppColors.normalText,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              checkColor: AppColors.titleColor,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: false,
                              onChanged: (value) {},
                              title: Text(
                                'سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 14,
                                  color: AppColors.titleColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              subtitle: Text(
                                'يضاف هنا خطة التقسيط لمدة سنة',
                                style: TextStyle(
                                  fontFamily: 'GESSMEDIUM',
                                  fontSize: 12,
                                  color: AppColors.normalText,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SignUpScreen()));
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
                            "إتمام التسجيل",
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
