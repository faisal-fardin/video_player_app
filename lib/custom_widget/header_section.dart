import 'package:flutter/material.dart';
import '../models/video_player_models.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key, required this.results,
  });

  final Results results;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network('${results.thumbnail}'),
          ],
        ),
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            title: SizedBox(
              width: 250,
              height: 30,
              child: Text('${results.title}',
                style: const TextStyle(
                  color: Color(0xFF1A202C),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
            ),
            subtitle:  Padding(
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
                    '${results.createdAt}',
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