import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/404.png',
                  width: 300,
                  height: 86,
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Where are you going?',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Seems like the page that you \n were requested is already gone',
                  style: greyTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: edge),
                  height: 50,
                  width: 210,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: purpleColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                    child: Text('Back To Home',
                        style: whiteTextColor.copyWith(fontSize: 18)),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
