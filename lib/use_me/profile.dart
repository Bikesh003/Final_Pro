import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/1img.jpg",
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 124, 226, 22),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.edit)),
                            ),
                            const CircleAvatar(
                              radius: 50,
                              backgroundColor:
                                  Color.fromARGB(255, 78, 219, 244),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Enter your name.'),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 100,
                                      child: const LinearProgressIndicator(
                                        value: 0.3,
                                        backgroundColor: Color(0xFFF7F7F7),
                                        color: Color(0xFFF4CB2B),
                                      )),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    'Level 1',
                                    style: TextStyle(
                                        color: Color(0xFFF4CB2B),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Text('My Orders'),
                            trailing: Icon(Icons.shopping_cart),
                          ),
                          const ListTile(
                            leading: Text('My Favorite'),
                            trailing: Icon(Icons.favorite_border),
                          ),
                          const ListTile(
                            leading: Text('Account Settings'),
                            trailing: Icon(Icons.settings),
                          ),
                          const ListTile(
                            leading: Text('Log Out'),
                            trailing: Icon(Icons.login_rounded),
                          ),
                          const Divider(
                            thickness: 1.5,
                          ),
                          Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: const Text('Terms - Conditions'))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
