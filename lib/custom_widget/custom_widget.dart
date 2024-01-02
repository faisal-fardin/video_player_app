
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            title: const SizedBox(
              width: 250,
              height: 30,
              child: Text(
                'আরব নেতাদের যে ভুলে ফি*লি*স্তি*নের এই দুর্দাশা | আবু ত্বহা মুহাম্মদ আদনান',
                style: TextStyle(
                  color: Color(0xFF1A202C),
                  fontSize: 15,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Color(0xFFD9D9D9),
              ),
            ),
            subtitle: const Padding(
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

class ActionSection extends StatelessWidget {
  const ActionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 138,
          height: 80,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.heart_broken_sharp,size: 30,),
              ),
              const Text(
                'MASH ALLAH  (12K)',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 6,),
        Container(
          width: 75,
          height: 80,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.thumb_up_off_alt_outlined,size: 30,),
              ),
              const Text(
                'LIKE  (12K)',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 6,),
        Container(
          width: 75,
          height: 80,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.share_outlined,size: 30,),
              ),
              const Text(
                'SHARE',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 6,),
        Container(
          width: 80,
          height: 80,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0xFFE2E8F0)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.flag_outlined,size: 30,),
              ),
              const Text(
                'REPORT',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

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