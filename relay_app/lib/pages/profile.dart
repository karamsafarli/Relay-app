import 'package:flutter/material.dart';
import '../components/addedtxs.dart';
import '../components/emptytx.dart';
import './txamount.dart';
import '../components/txlist.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 150,
        leading: Container(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 24,
                width: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xfff1f1f1),
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset('assets/images/textvisa.png'),
              ),
              SizedBox(width: 5),
              Text(
                '***5566',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 6),
              Image.asset('assets/images/chevron-down.png'),
            ],
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/bell.png'),
                SizedBox(width: 27),
                Image.asset('assets/images/user.png'),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Good Evening',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Hi, Farid Muradov',
                style: TextStyle(
                  color: Color(0xff111111),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              transactionList.isEmpty ? EmptyTx() : AddedTransactions(),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 15),
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => NewTransaction())));
          },
          elevation: 0,
          backgroundColor: Color(0xff0052fe),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
