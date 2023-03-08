import 'package:flutter/material.dart';
import '../pages/verification.dart';

class NumberInput extends StatelessWidget {
  final number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60),
            Text(
              'What is your\nmobile number?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  //padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xffd9d9d9),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: (MediaQuery.of(context).size.width - 40) * 0.28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/flag.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/dropdown.png'),
                    ],
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 40) * 0.03,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 40) * 0.69,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xffd9d9d9),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: number,
                   
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 20,
                          bottom: 20,
                          right: 3,
                        ),
                        child: Text(
                          '+994',
                          style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'We’ll send you a verification code by text message',
              style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 3),
            Text(
              'so you can confirm that it’s really you',
              style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 80,
        height: 80,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/border.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Verification(num: number.text)));
                },
                backgroundColor: Colors.white,
                elevation: 0,
                child: Image.asset('assets/images/nexticon.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
