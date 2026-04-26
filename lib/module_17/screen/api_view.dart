import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practice/module_17/model/postModel.dart';
import 'package:http/http.dart'as  http;
import 'package:practice/module_17/utils/urls.dart';
class ApiView extends StatefulWidget {
  const ApiView({super.key});

  @override
  State<ApiView> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  List<postModel> post =[];
  Future<void>fetchPost() async {
    final response = await http.get(Uri.parse(Urls.getPost));
    log(response.toString());
    if(response.statusCode==200){
      List data  = jsonDecode(response.body);
      setState(() {
        post = data.map((e)=>postModel.fromJson(e)).toList();
      });
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('No Data get from the server'),
        )
      );
    }


  }
  Future<void>deletePost(String id) async {
    final response = await http.delete(Uri.parse(Urls.deletePost(id)));
    log(response.toString());
    if(response.statusCode==200) {
      await fetchPost();
      setState(() {

      });
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('No Data get from the server'),
        )
      );
    }


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: ListView.builder(
        itemCount: post.length,
          itemBuilder: (context,index){
          final posts =post[index];
          return Card(
            elevation: 10,
            child: ListTile(

              title: Text(posts.title.toString()),
              subtitle: Text(posts.body.toString()),
            trailing: IconButton(onPressed: (){
              deletePost(posts.id.toString());

            }, icon: Icon(Icons.delete,color: Colors.red,)),
            ),
          );
          },
      ) );
  }
}
