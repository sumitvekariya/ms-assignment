import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payapp/screens/detail.dart';

class Transactions extends StatelessWidget {
  const Transactions(
      {Key? key,
      required this.title,
      required this.amount,
      required this.imageAddress,
      required this.time})
      : super(key: key);
  final String title;
  final double amount;
  final String imageAddress;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.only(
        top: 5.0,
      ),
      borderOnForeground: true,
      color: const Color(0xff151E34),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: () {
            Get.to(() => Detail(), arguments: [title], preventDuplicates: true);
          },
          leading: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(imageAddress),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.blue[500],
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "£$amount",
                style: TextStyle(
                  color: amount >= 0 ? Colors.green : Colors.red,
                  fontSize: 16.0,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.blue[500],
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
