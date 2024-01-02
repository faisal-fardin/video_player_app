import 'package:flutter/material.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'Mega Bangla Tv',
            style: TextStyle(
              color: Color(0xFF1A202C),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: Container(
            width: 40,
            height: 40,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP.1d7TQI67pwfr0F5jqTgD1AHaGw?rs=1&pid=ImgDetMain"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
          subtitle: const Text(
            '3M Subscribers',
            style: TextStyle(
              color: Color(0xFF718096),
              fontSize: 12,
              fontWeight: FontWeight.w400,

            ),
          ),
          trailing: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3898FC),
            ),
            onPressed: (){},
            icon: const Icon(Icons.add,size: 25,color: Colors.white,),
            label: const Text(
              'Subscribe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}