import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:payapp/widgets/list_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static final List list = [
    {
      "title": "Starbucks",
      "vendor": "Electricity",
      "amount": -20.00,
      "img":
          "https://logos-download.com/wp-content/uploads/2016/03/Starbucks_Logo_2011.png"
    },
    {
      "title": "Netflix",
      "vendor": "Electricity",
      "amount": -9.09,
      "img": "https://wallpapercave.com/wp/wp5063342.png"
    },
    {
      "title": "ASDA",
      "vendor": "Groceries",
      "amount": -20.00,
      "img":
          "https://logos-download.com/wp-content/uploads/2016/03/Starbucks_Logo_2011.png"
    },
  ];

  static String formattedDate =
      "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMd().format(DateTime.now())}";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Accounts",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Cash flow",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Analytics",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Finance",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: const [
            Text(
              "Transactions",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            IconButton(
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            Spacer(),
            Text(
              "Balance: 1351.21",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: const [
            Text(
              "15.02.2021",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Spacer(),
            Text(
              "£-24.21",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        // GetX<TransactionController>(
        //   init: TransactionController(),
        //   builder: (controller) => ListView.builder(
        //     scrollDirection: Axis.vertical,
        //     shrinkWrap: true,
        //     itemCount: list.length,
        //     itemBuilder: (context, index) {
        //       return Transactions(
        //         title: list[index]["title"],
        //         amount: list[index]["amount"],
        //         imageAddress: list[index]["img"],
        //         time: formattedDate,
        //       );
        //     },
        //   ),
        // ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Transactions(
                title: list[index]["title"],
                amount: list[index]["amount"],
                imageAddress: list[index]["img"],
                time: formattedDate,
              );
            }),
        const SizedBox(height: 15),
        Row(
          children: const [
            Text(
              "15.02.2021",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Spacer(),
            Text(
              "£-24.21",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Transactions(
                title: list[index]["title"],
                amount: list[index]["amount"],
                imageAddress: list[index]["img"],
                time: formattedDate,
              );
            })
      ],
    );
  }
}

class TransactionController extends GetxController {
  var selectedTransaction = 0.obs;

  void selectTransaction(int index) {
    selectedTransaction.value = index;
  }
}
