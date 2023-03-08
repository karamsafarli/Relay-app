import 'package:flutter/material.dart';
import './txlist.dart';

class AddedTransactions extends StatelessWidget {
  const AddedTransactions({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Container(
        margin: EdgeInsets.only(bottom: 50),
        width: MediaQuery.of(context).size.width - 40,
        child: Expanded(
          child: ListView.builder(
            itemCount: transactionList.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: ((BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Text(
                            '${transactionList.reversed.toList()[index]['title']}',
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color(0xfff1f1f1),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Color(0xff4a4a4a),
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 119,
                      height: 24,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffE2FFEA),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              '•',
                              style: TextStyle(
                                color: Color(0xff78E296),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Expiring in 5 days',
                              style: TextStyle(
                                color: Color(0xff78E296),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Text(
                            '${transactionList[index]['amount']}',
                            overflow: TextOverflow.visible,
                            softWrap: true,
                            style: TextStyle(
                              color: Color(0xff0052fe),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '122',
                                style: TextStyle(
                                  color: Color(0xff475467),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5),
                              Image.asset('assets/images/eyeshownum.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
