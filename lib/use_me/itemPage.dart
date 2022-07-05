import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:loginpage/use_me/HomePage.dart';
import 'package:loginpage/models/place_model.dart';

class ItemPage extends StatefulWidget {
  final Places currentPlace;
  ItemPage({Key? key, required this.currentPlace}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 236, 236),
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.network(
                  'http://mark.bslmeiyu.com/uploads/${widget.currentPlace.img.toString()}',
                ),
              ),
              Text(widget.currentPlace.name.toString()),
              Text(
                'Rs.${widget.currentPlace.price.toString()}',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: widget.currentPlace.stars,
                        itemBuilder: ((context, index) {
                          return Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 217, 0),
                          );
                        })),
                  ),
                  Spacer(),
                  Text(
                    widget.currentPlace.stars.toString() + '/5',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Text(
                'Description',
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(widget.currentPlace.description.toString()),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Buy Now')),
                    Spacer(),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 239, 236, 236),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                        onPressed: () {},
                        child: Text('Add to Cart')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
