import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inshortui/controllers/feed_controller.dart';
import 'package:inshortui/controllers/provider.dart';
import 'package:inshortui/view/discovery/widgets/category_card.dart';
import 'package:inshortui/view/discovery/widgets/topics_card.dart';
import 'package:provider/provider.dart';

import 'widgets/headline.widget.dart';
import 'widgets/searchbar.widget.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FeedProvider>(context, listen: false);

    return Scaffold(
      appBar: appSearchBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            headLine("categories"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Consumer<FeedProvider>(
                  builder: (context, value, child) => Row(
                    children: <Widget>[
                      CategoryCard(
                        title: "My Feed",
                        icon: "all",
                        active: provider.getActiveCategory == 1,
                        onTap: () {
                          provider.setActiveCategory(1);
                          provider.setAppBarTitle("My Feed");
                        },
                      ),
                      CategoryCard(
                        title: "Trending",
                        icon: "trending",
                        active: provider.getActiveCategory == 2,
                        onTap: () {
                          provider.setActiveCategory(2);
                          provider.setAppBarTitle("Trnding");
                        },
                      ),
                      CategoryCard(
                        title: "BookmARK",
                        icon: "bookmark",
                        active: provider.getActiveCategory == 3,
                        onTap: () {
                          provider.setActiveCategory(3);
                          provider.setAppBarTitle("bookmark");
                        },
                      ),
                      CategoryCard(
                        title: "unread",
                        icon: "unread",
                        active: provider.getActiveCategory == 4,
                        onTap: () {
                          provider.setActiveCategory(4);
                          provider.setAppBarTitle("unread");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            headLine("suggested topic"),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: (1 / 1.4),
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: <Widget>[
                  TopicCard(
                    title: "coronavirus",
                    icon: "coronavirus",
                    onTap: () {
                      provider.setAppBarTitle("coronavirus");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "india",
                    icon: "india",
                    onTap: () {
                      provider.setAppBarTitle("india");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "business",
                    icon: "business",
                    onTap: () {
                      provider.setAppBarTitle("business");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "politics",
                    icon: "politics",
                    onTap: () {
                      provider.setAppBarTitle("politics");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "sports",
                    icon: "sports",
                    onTap: () {
                      provider.setAppBarTitle("sports");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "technology",
                    icon: "technology",
                    onTap: () {
                      provider.setAppBarTitle("technology");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "startups",
                    icon: "startups",
                    onTap: () {
                      provider.setAppBarTitle("startups");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "entertainment",
                    icon: "entertainment",
                    onTap: () {
                      provider.setAppBarTitle("entertainment");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "education",
                    icon: "education",
                    onTap: () {
                      provider.setAppBarTitle("education");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "automobile",
                    icon: "automobile",
                    onTap: () {
                      provider.setAppBarTitle("automobile");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "science",
                    icon: "science",
                    onTap: () {
                      provider.setAppBarTitle("science");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "travel",
                    icon: "travel",
                    onTap: () {
                      provider.setAppBarTitle("travel");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                  TopicCard(
                    title: "fashion",
                    icon: "fashion",
                    onTap: () {
                      provider.setAppBarTitle("fashion");
                      FeedController.addCurrentPage(1);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
