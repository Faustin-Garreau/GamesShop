import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  const GameItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 49, 49, 49),
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          // line 1 with images and buttons
                          Center(
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/sonic.jpg',
                                  height: 200,
                                  width: 200,
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.add_outlined,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  tooltip: 'Increment quantity of item',
                                  onPressed: () {
                                    // setState(() {
                                    // _volume += 1;
                                    // });
                                  },
                                ),
                                const Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.remove_outlined,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  tooltip: 'Increment quantity of item',
                                  onPressed: () {
                                    // setState(() {
                                    // _volume += 1;
                                    // });
                                  },
                                ),
                              ],
                            ),
                          ),
                          // line 2 with game title
                          Container(
                            // color: Colors.red[900],
                            child: const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Super Mario game",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // line 3 withprice and add button
                          Row(
                            children: [
                              const Text(
                                "25.99 €",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 180),
                              IconButton(
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                                tooltip: 'Increment quantity of item',
                                onPressed: () {
                                  // setState(() {
                                  // _volume += 1;
                                  // });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
