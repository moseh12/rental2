
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rental/components/news_and_blog_components.dart';
import 'package:rental/utils/colorscheme.dart';


import 'news_and_blog_details.dart';


class NewsAndBlog extends StatelessWidget {
  const NewsAndBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NewsAndBlogBody(),
      ),
    );
  }
}

class NewsAndBlogBody extends StatefulWidget {
  const NewsAndBlogBody({super.key});

  @override
  _NewsAndBlogBodyState createState() => _NewsAndBlogBodyState();
}

class _NewsAndBlogBodyState extends State<NewsAndBlogBody> {
  List<bool> saved = [false, false, false, false, false, false];
  List<String> newsTitle = [
    'News',
    'Blog/Articles',
    'News',
    'News',
    'News',
    'Blog/Articles'
  ];
  List<String> newsDesc = [
    'LA Heights\' unmatchable location piques investor interest',
    'ABAD allowed to construct high-rise building in 5 major cities',
    'DHA signs Mou for construction of villas',
    'Best DIY Tips to decor a house',
    'Perks of Oening property in Islamabad',
    'Checklist for Buying Commercial Real Estate in Pakistan '
  ];
  List<String> urlImages = [
    'assets/images/la_height.jpg',
    'assets/images/abad.jpg',
    'assets/images/dha.jpg',
    'assets/images/decor.jpg',
    'assets/images/islamabad.jpg',
    'assets/images/checklist.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          bannerForNewsAndBlog(context),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: newsTitle.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((10.0))),
                        child: SizedBox(
                          height: 140,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                NewsAndBlogDetails(
                                                    newsDesc[index])));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.horizontal(
                                            left: Radius.circular(10.0)),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                urlImages[index]))),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        newsTitle[index],
                                        style: const TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        newsDesc[index],
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          const Text(
                                            'Post on: 9 hours',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          const Icon(
                                            Icons.share,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                saved[index] = !saved[index];
                                              });
                                            },
                                            child: saved[index]
                                                ? const Icon(
                                                    Icons.bookmark,
                                                    color: primaryColor,
                                                    size: 20,
                                                  )
                                                : const Icon(
                                                    Icons.bookmark_border,
                                                    color: primaryColor,
                                                    size: 20,
                                                  ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              })
        ],
      ),
    );
  }
}
