import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/nft_details.dart';

class AllNfts extends StatelessWidget {
  AllNfts({super.key});

  final List nftIntroImages = [
    // [nftPrice, nftImage]
    ['20.10', 'lib/assets/images/nft10.jpg'],
    ['30.29', 'lib/assets/images/nft9.jpg'],
    ['15.04', 'lib/assets/images/nft8.jpg'],
    ['55.04', 'lib/assets/images/nft7.jpg'],
    ['20.10', 'lib/assets/images/nft6.jpg'],
    ['30.29', 'lib/assets/images/nft5.jpg'],
    ['15.04', 'lib/assets/images/nft4.jpg'],
    ['55.04', 'lib/assets/images/nft3.jpg'],
    ['15.04', 'lib/assets/images/nft2.jpg'],
    ['55.04', 'lib/assets/images/nft1.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff261515),
      appBar: AppBar(
        title: const Text('All NFT'),
        backgroundColor: const Color(0xff261515),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: GridView.builder(
                  // ignore: prefer_const_constructors
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: .7,
                    mainAxisSpacing: .7,
                  ),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: nftIntroImages.length,

                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (builder)=>NftDetails(description: nftIntroImages[index][0], image: nftIntroImages[index][1], name: nftIntroImages[index][0],))),
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        padding: const EdgeInsetsDirectional.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GridTile(
                          footer: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            color: Colors.black54,
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '${nftIntroImages[index][0]}',
                              style: const TextStyle(
                                height: 1.3,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          child: Container(
                            color: Colors.red,
                            child: Image.asset(nftIntroImages[index][1]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
