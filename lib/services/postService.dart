//import 'package:flutter/cupertino.dart';
import 'package:flutter7/models/post.dart';
import 'package:dio/dio.dart';

class PostService{
  String baseUrl="https://jsonplaceholder.typicode.com/";
  String posts="posts";

  
  Future <List<Post>> getPosts() async {
    List<Post> postsList=[];
    Response response= await  Dio().get("$baseUrl$posts");
    var data= response.data;
    data.forEach((element){
      Post post=Post.fromJson(element);
      postsList.add(post);

    });
    return postsList;

  }

}