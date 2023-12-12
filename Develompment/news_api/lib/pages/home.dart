// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:news_api/components/news.dart';
import 'package:news_api/provider/news_provider.dart';
import 'package:provider/provider.dart';
// ... (your imports)

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getNews() {
    Provider.of<NewsProvider>(context, listen: false).getTopNews();
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (BuildContext context, news, Widget? child) {
        return RefreshIndicator(
          onRefresh: () async {
            return await getNews();
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Berita Terbaru",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: const [],
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    news.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            children: [
                              ...news.resNews!.articles!.map(
                                (e) => News(
                                  title: e.title ?? '',
                                  image: e.urlToImage ?? 'fallback_image_url',
                                  url: '',
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class News extends StatelessWidget {
  final String title;
  final String image;

  const News(
      {Key? key, required this.title, required this.image, required String url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: RadialGradient(
            colors: [
              Colors.blue.shade400,
              Colors.blue.shade800,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  FancyShimmerImage(
                    imageUrl: image,
                    boxFit: BoxFit.cover,
                    width: double.infinity,
                    height: 200.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ...',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle additional action
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle the button press, e.g., open the full article
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                  ),
                  child: const Text('Read More'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
