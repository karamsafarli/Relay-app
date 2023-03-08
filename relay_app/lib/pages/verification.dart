import 'package:flutter/material.dart';
import './email.dart';

class Verification extends StatefulWidget {
  final String num;
  const Verification({super.key, required this.num});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String _numb = "";

  @override
  void initState() {
    super.initState();
    _numb = widget.num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/prev.png'),
                ),
                Text(
                  '2/5',
                  style: TextStyle(
                      color: Color(0xff0052fe),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Enter the code sent\nto +994 $_numb',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
        
            SizedBox(height: 20),
            Row(
              children: [
                _numberOtp(first: true, last: false),
                SizedBox(width: 10),
                _numberOtp(first: false, last: false),
                SizedBox(width: 10),
                _numberOtp(first: false, last: false),
                SizedBox(width: 10),
                _numberOtp(first: false, last: true),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'it may take a while before you recieve the text',
              style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              'Resend sms in 16 sec',
              style: TextStyle(
                  color: Color(0xff0052fe),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
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
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/comp25.png',
                fit: BoxFit.cover,
              ),
            ),
             Center(
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Email())));
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

  _numberOtp({bool? first, bool? last}) {
    return Container(
      //height: 60,
      width: 60,
      alignment: Alignment.center,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }

          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xff666666),
            fontSize: 16,
            fontWeight: FontWeight.w700),
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Color(0xffd9d9d9),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
