import 'package:flutter/material.dart';
//import 'package:badges/badges.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productname = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Cherry',
    'Peach',
    'Mixed Fruit',
  ];
  List<String> productunit = ['KG', 'KG', 'KG', 'KG', 'KG', 'KG', 'KG'];
  List<String> productprice = ['10', '20', '30', '40', '50', '60', '70'];
  List<String> productimage = [
    'https://images.unsplash.com/photo-1553279768-865429fa0078?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1638015449388-baf3bd201989?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8b3JhZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1596363505729-4190a9506133?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JhcGVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1528825871115-3581a5387919?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFuYW5hfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://plus.unsplash.com/premium_photo-1675731118092-c42fd9bd5164?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlcnJ5fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1595743825637-cdafc8ad4173?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVhY2h8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1641642400143-6be68f1a0918?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWl4ZWQlMjBmcnVpdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
  ];

  //dynamic get basges => null;

  @override
  Widget build(BuildContext context) {
    //var badges;
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Product Shopping cart List')),
        centerTitle: true,
        actions: const [
          // badges.Badge(
          //   badgeContent: Text('1'),
          //position: badges.BadgePosition.topEnd(top: -10, end: -12)
          //  ),
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: productname.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                    height: 100,
                                    width: 100,
                                    image: NetworkImage(
                                        productimage[index].toString())),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productname[index].toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                          productunit[index].toString() +
                                              " " +
                                              r"$" +
                                              productprice[index].toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Center(
                                              child: Text(
                                            " Add To Cart",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
