import 'dart:convert';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loginpage/use_me/cartpg.dart';
import 'package:loginpage/use_me/itemPage.dart';
import 'package:loginpage/models/place_model.dart';
import 'package:loginpage/signin.dart';
import 'package:loginpage/signup.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  getPlaces() async {
    var response =
        await http.get(Uri.parse("http://mark.bslmeiyu.com/api/getplaces"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(160, 97, 195, 31),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
              ),
              FutureBuilder(
                  future: getPlaces(),
                  builder: ((context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return const Text('No Connection');

                      case ConnectionState.waiting:
                        return const CircularProgressIndicator();

                      case ConnectionState.done:
                        var decode = jsonDecode(snapshot.data.toString());
                        List<Places> placeList = [];

                        decode
                            .forEach((e) => placeList.add(Places.fromJson(e)));

                        return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: placeList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => ItemPage(
                                                  currentPlace:
                                                      placeList[index],
                                                )));
                                  },
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.10),
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  // Text(placeList[index]
                                                  //     .img
                                                  //     .toString()),
                                                  Image.network(
                                                    'http://mark.bslmeiyu.com/uploads/${placeList[index].img.toString()}',
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                  Spacer(),
                                                  Column(
                                                    children: [
                                                      Text(placeList[index]
                                                          .name
                                                          .toString()),
                                                      Text(placeList[index]
                                                          .price
                                                          .toString()),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Column(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(Icons
                                                              .shopping_cart_checkout)),
                                                      Text('Checkout'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      default:
                        return Text('Error!');
                    }
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
