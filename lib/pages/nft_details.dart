import 'package:flutter/material.dart';

class NftDetails extends StatelessWidget {
  NftDetails(
      {super.key,
      required this.name,
      required this.image,
      required this.description});
  String name, image, description;

  Widget buildSliverAppBar(name, image, details) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: Colors.grey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        background: Hero(
          tag: details,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff261515),
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(name, image, description),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(children: [
                        Text(
                          name,
                           style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ]),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
