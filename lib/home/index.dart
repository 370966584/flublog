import 'package:flutter_web_blog/common/common_export.dart';
import 'package:flutter_web_blog/home/sonwflake.dart';


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

     body: CustomScrollView(
       slivers: [
         SliverAppBar(
            // title: Text("标题"),
            expandedHeight: 230.0,
            floating: true,
            pinned: true,
            snap: false,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  
                  SnowflakePage(),
                ],
              ),
            ),
            actions: [
              Text('主页'),
              Text('分类'),
            ],
          ),
         SliverFixedExtentList(
           delegate: SliverChildBuilderDelegate((b,index){
             return Container(
              //  color: Colors.red,
               margin: EdgeInsets.symmetric(vertical: 5,horizontal: MediaQuery.of(context).size.width/8),
               child: Row(
                 children: [
                   Icon(Icons.favorite,color:Colors.red.shade300),
                   Expanded(child: SizedBox.shrink()),
                   Icon(Icons.favorite,color:Colors.red.shade300),
                 ],
               ),
             );
           },childCount: 20), 
           itemExtent: 50
          ),
       ],
     ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
