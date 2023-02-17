import 'dart:convert';
import 'package:tarea_4_crypto_app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  var exchanges = jsonDecode(CRYPTO_EXCHANGES) as List;
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto APP"),
      ),
      body: ListView.separated(
          itemCount: widget.exchanges.length,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image(
                image: NetworkImage(widget.exchanges[index]["image"]),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.grey[500],
                child: Text(
                  "${widget.exchanges[index]["trust_score"]}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text("${widget.exchanges[index]["name"]}"),
              subtitle: Text(
                  "${widget.exchanges[index]["country"]}\n${widget.exchanges[index]["year_established"]}"),
            );
          }),
    );
  }
}
