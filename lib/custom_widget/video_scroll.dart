import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_playe_app/models/video_player_models.dart';

import '../pages/video_paly_screen.dart';

class VideoPlayDetails extends StatelessWidget {
  const VideoPlayDetails({
    super.key,
    required this.results,
  });

  final Results results;

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
                  Image.network(results.thumbnail.toString()),
                   Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      width: 50,
                      height: 20,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.9200000166893005),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child:  Center(
                        child: Text(
                          '${results.duration}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.12,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(results.channelImage.toString()),
                        fit: BoxFit.fill,
                      ),
                      shape: const OvalBorder(),
                    ),
                  ),
                  title: SizedBox(
                    width: 250,
                    height: 30,
                    child: Text(
                      '${results.title}',
                      style: const TextStyle(
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
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Text(
                          '${results.viewers}',
                          style: const TextStyle(
                            color: Color(0xFF718096),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          '${results.dateAndTime}',
                          style: const TextStyle(
                            color: Color(0xFF718096),
                            fontSize: 14,
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
