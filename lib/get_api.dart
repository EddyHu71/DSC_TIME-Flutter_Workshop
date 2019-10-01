import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hello_world/apis.dart';

class GetApi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetApiState();
  }
}

class GetApiState extends State<GetApi> {
  final apiarray = List<ApiModel>();
  
  void getApi() async {
    var connection = await http.get("https://jsonplaceholder.typicode.com/posts");
    var jsonData = json.decode(connection.body);
    print(jsonData);
    if (jsonData == 200) {
      jsonData.forEach((jsons) {
        var arrays = ApiModel.fromJson(jsons);
        apiarray.add(arrays);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemCount: apiarray.length, 
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(apiarray[index].title),);
        },)
    );
  }

}