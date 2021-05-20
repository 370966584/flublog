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
              title: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('主页'),
                    Text('分类'),
                    Text('关于'),
                    Text('Github'),
                  ],
                ),
              ),
              centerTitle: true,
              background: SnowflakePage(),
            ),
            actions: [
              
            ],
          ),
         
          SliverFixedExtentList(
           delegate: SliverChildBuilderDelegate((b,index){
             return Item();
           },childCount: 20), 
           itemExtent: 80
          ),
       ],
     ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: Colors.red,
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: MediaQuery.of(context).size.width/8),
      child:Row(
        children: [
          // Icon(Icons.favorite),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(3)
              ),
              child: Text('哈哈'*60,maxLines: 3,overflow: TextOverflow.ellipsis,),
            ),
          ),
          // Icon(Icons.favorite),
        ],
      ),
    );
  }
}