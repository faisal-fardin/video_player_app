import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/video_paly_screen.dart';

class VideoPlayDetails extends StatelessWidget {
  const VideoPlayDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const VideoPlayScreen());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 360,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x14202028),
                blurRadius: 20,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
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
                  title: const SizedBox(
                    width: 250,
                    height: 30,
                    child: Text(
                      'আরব নেতাদের যে ভুলে ফি*লি*স্তি*নের এই দুর্দাশা | আবু ত্বহা মুহাম্মদ আদনান',
                      style: TextStyle(
                        color: Color(0xFF1A202C),
                        fontSize: 12,
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
                          'Feb 21, 2021',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}