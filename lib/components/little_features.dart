import 'package:flutter/material.dart';

class LittleFeatures extends StatelessWidget {
  const LittleFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 210,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CircularIconWithText(
                text: 'Amazon Pay', iconData: Icons.payment_rounded),
            CircularIconWithText(
                text: 'Send money', iconData: Icons.attach_money_rounded),
            CircularIconWithText(
                text: 'Scan any QR', iconData: Icons.qr_code_scanner_rounded),
            CircularIconWithText(
                text: 'Recharge & Bills', iconData: Icons.receipt_long_rounded),
          ],
        ),
      ),
    );
  }
}

class CircularIconWithText extends StatelessWidget {
  final String text;
  final IconData iconData;

  const CircularIconWithText({
    super.key,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
