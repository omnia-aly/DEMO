import 'package:flutter/material.dart';
import 'package:flutter7/models/post.dart';
import 'package:flutter7/screens/postDetails.dart';
import 'package:flutter7/screens/widget/myCard.dart';
import 'package:flutter7/services/postService.dart';
import 'package:flutter7/utils.dart';

class PostsScreen extends StatefulWidget {


  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  bool loading= true;
  List<Post>posts=[];

  get itemBuilder => null;

  get child => null;
  getPostList() async {
    posts=await  PostService().getPosts();
    loading=false;
    setState(() {
      
    });

  }
   @override
  void initState(){
    super.initState();
    getPostList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posts Screen"),
      ),
      body:loading ?Center(child: CircularProgressIndicator()):
      ListView.builder(
        itemCount:posts.length,
        itemBuilder:(BuildContext context, int index){
         // var title = posts[index].title;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child:InkWell(
              onTap: (){
                pushPage(context,PostDetails(posts[index]));
              },
              child: MyCard(content: "${posts[index].title}"),
            ),
            );

          
        },
      )

    );
      
    
  }
}