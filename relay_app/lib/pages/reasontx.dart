import 'package:flutter/material.dart';
import 'package:relay_app/components/txlist.dart';
import './txlink.dart';

class ReasonTx extends StatefulWidget {
  final String exp;
  const ReasonTx({super.key, required this.exp});

  @override
  State<ReasonTx> createState() => _ReasonTxState();
}

class _ReasonTxState extends State<ReasonTx> {
  String _amount = '';
  final _title = TextEditingController();

  @override
  void initState() {
    super.initState();
    _amount = widget.exp;
  }

  void _addlist() {
    setState(() {
      transactionList.add({'amount': '\$$_amount', 'title': '${_title.text}'});
    });
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
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/prev.png'),
              ),
            ),
            SizedBox(height: 14),
            Text(
              'What is it for?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              autofocus: true,
              cursorColor: Colors.black,
              controller: _title,
              // onChanged: (value) {
              //   print(_amount);
              // },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Pisiyime yemek alacam',
              ),
              style: TextStyle(
                color: Color(0xff666666),
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        // alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            _addlist();
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => GeneratedLink())));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0052fe),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          child: Text(
            'Generate link',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
