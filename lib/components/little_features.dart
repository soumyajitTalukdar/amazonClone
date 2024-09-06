import 'package:flutter/material.dart';

class LittleFeatures extends StatelessWidget {
  const LittleFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircularIconWithText('Amazon Pay', Icons.payment_rounded),
              buildCircularIconWithText(
                  'Send money', Icons.attach_money_rounded),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircularIconWithText(
                  'Scan any QR', Icons.qr_code_scanner_rounded),
              buildCircularIconWithText(
                  'Recharge & Bills', Icons.receipt_long_rounded),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCircularIconWithText(String text, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow[700],
          ),
          child: Icon(
            iconData,
            size: 35,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Text(text),
        ),
      ],
    );
  }
}
