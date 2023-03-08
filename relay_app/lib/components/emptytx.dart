import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyTx extends StatelessWidget {
  const EmptyTx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: (MediaQuery.of(context).size.height - 550) * 0.45),
        Center(
          child: Image.asset('assets/images/emptytx.png'),
        ),
        SizedBox(height: 32),
        Center(
          child: Text(
            'You don’t have any transaction, please touch\nthe create button',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff666666),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
