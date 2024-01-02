
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

class CommentSection extends StatelessWidget {
  const CommentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Comments   7.5K',
              style: TextStyle(
                color: Color(0xFF718096),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.compress_rounded),
            ),
          ],
        ),
        SizedBox(
          height: 70,
          child: TextFormField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
              fontSize: 18,
            ),
            decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Add Comment',
                hintStyle: TextStyle(
                    fontSize: 16, color: Color(0xFFC1BDB9)),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Color(0xFFE2E8F0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Color(0xFFE2E8F0)),
                )),
          ),
        ),
        ListTile(
          title: const Row(
            children: [
              Text(
                'Fahmida khanom',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '2 days ago',
                style: TextStyle(
                  color: Color(0xFF718096),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          subtitle: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              child: Text(
                'হুজুরের বক্তব্য গুলো ইংরেজি তে অনুবাদ করে সারা পৃথিবীর মানুষদের কে শুনিয়ে দিতে হবে। কথা গুলো খুব দামি',
                style: TextStyle(
                  color: Color(0xFF4A5568),
                  fontSize: 12,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w400,
                ),
              ),
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
        ),
      ],
    );
  }
}