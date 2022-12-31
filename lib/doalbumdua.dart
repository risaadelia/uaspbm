import 'package:flutter/material.dart';
import 'package:smstorerisa/order.dart';

void main() {
  runApp(const DOAlbumDua());
}

class DOAlbumDua extends StatelessWidget {
  const DOAlbumDua({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OrderScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const tabBar = TabBar(
      isScrollable: true,
      indicatorColor: Colors.grey,
      labelColor: Colors.black,
      labelPadding: EdgeInsets.symmetric(horizontal: 10),
      tabs: [
        Tab(
          child: Text('All'),
        ),
        Tab(
          child: Text('Not Yet Paid'),
        ),
        Tab(
          child: Text('Packed'),
        ),
        Tab(
          child: Text('Sent'),
        ),
        Tab(
          child: Text('Review'),
        )
      ],
    );
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.lightGreenAccent,
          title: const Text('Order', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
          foregroundColor: Colors.black,
          bottom: PreferredSize(
            preferredSize: tabBar.preferredSize,
            child: const ColoredBox(
              color: Colors.lightGreenAccent,
              child: tabBar,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Order()));
                },
                child: Container(
                  height: 250,
                  padding: const EdgeInsets.all(14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 224, 224),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Sent',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child:  Image.asset(
                        'img/dp1-3.png',
                              fit: BoxFit.fill,
                              height: 150,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'NCT 127 The 3rd Album Sticker (Sticky Ver.)',
                                        style: TextStyle(fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'x1',
                                        style: TextStyle(fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'IDR 333.000',
                                        style: TextStyle(fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        '1 Item : IDR 333.000',
                                        style: TextStyle(fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
