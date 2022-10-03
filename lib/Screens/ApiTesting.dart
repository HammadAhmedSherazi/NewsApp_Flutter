import 'dart:convert';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  State<TestApi> createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  getData() async {
    var details = [];
    var response = await http
        .get(Uri.parse('https://api.coindesk.com/v1/bpi/currentprice.json'));
    var Data = jsonDecode(response.body);
    print(Data);
    for (var i in Data) {
      BitcoinDetail detail = BitcoinDetail(i['disclaimer'], i['chartName']);
      details.add(detail);
    }
    return details;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return Container(
            child: Text('Data is not hera'),
          ) ;

        } else return ListView.builder(
              itemCount: 4,
              itemBuilder: (context, int i) {
                return ListTile(
                  title: Text(snapshot.data[i].name),
                );
              });
        
      },
    ));
  }
}

class BitcoinDetail {
  var disclaimer;
  var chartName;

  BitcoinDetail(this.disclaimer, this.chartName);
}
