import 'package:flutter/material.dart';
import './card.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
                  '3/5',
                  style: TextStyle(
                      color: Color(0xff0052fe),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(height: 24),
            Text(
              'What is your\nmail address?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
           
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: 'Email address',
                  border: InputBorder.none,
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
                      color: Color(0xffd9d9d9),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  prefixIcon: Image.asset('assets/images/envelope.png'),
                ),
              ),
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
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/comp50.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CardDetails())));
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
