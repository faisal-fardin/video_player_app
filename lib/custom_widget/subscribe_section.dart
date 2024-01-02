import 'package:flutter/material.dart';
import 'package:video_playe_app/models/video_player_models.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({
    super.key,
    required this.results,
  });

  final Results results;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            '${results.channelUsername}',
            style: const TextStyle(
              color: Color(0xFF1A202C),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
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
          subtitle: Text(
            '${results.channelSubscriber}',
            style: const TextStyle(
              color: Color(0xFF718096),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3898FC),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            ),
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
