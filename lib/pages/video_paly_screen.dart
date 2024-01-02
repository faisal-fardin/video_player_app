import 'package:flutter/material.dart';

import '../custom_widget/custom_widget.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const HeaderSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    const ActionSection(),
                    const SizedBox(
                      height: 10,
                    ),
                    const SubscribeSection(),
                    const Divider(),
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
                          SizedBox(width: 20,),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
