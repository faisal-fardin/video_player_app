import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
                'https://th.bing.com/th/id/R.86a8179b2fabd7783eeb7c5cbe5cfa03?rik=c4aPFE24miQgvQ&pid=ImgRaw&r=0'),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            title: SizedBox(
              width: 250,
              height: 30,
              child: Text(
                'আরব নেতাদের যে ভুলে ফি*লি*স্তি*নের এই দুর্দাশা | আবু ত্বহা মুহাম্মদ আদনান',
                style: TextStyle(
                  color: Color(0xFF1A202C),
                  fontSize: 14,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: [
                  Text(
                    '53,245 views.',
                    style: TextStyle(
                      color: Color(0xFF718096),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '3 days ago',
                    style: TextStyle(
                      color: Color(0xFF718096),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}