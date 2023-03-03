import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}
final GlobalKey<AnimatedListState>_key=GlobalKey();
List<String>_Items=[
  "Items1",
  "Items2",
  "Items3",
  "Items4",
];
int i=0;

class _ItemsState extends State<Items> {
int Itemcount=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color:Colors.deepPurple,
                child: TextButton(child: Text("+",style: TextStyle(color: Colors.white,
                fontSize: 40
                ),),onPressed: (){
                  _addItem();
                  
                }),
              ),
            ),
            Expanded(
              flex: 9,
              child: AnimatedList(
                key: _key,
                initialItemCount: _Items.length,
                itemBuilder: (context, index, animation) {
                  return _buildItem(_Items[index],animation,index);
                },
                  
              ),
            ),
          ],
        ),
      ),
      
      );
      
      }
  Widget _buildItem(String item,Animation<double> animation,int index ){
    return SizeTransition(
      sizeFactor:animation ,
      child: Card(
        elevation: 2,
        child: ListTile(
          title: Text("item",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          ),
          trailing: IconButton(onPressed:(){
            _removeItem(index);
          },
          icon: Icon(Icons.delete),
          ),
        ),
      ),
     );
     
  }
  void _removeItem (int i){
    String removeditem=_Items.removeAt(i);
    AnimatedListRemovedItemBuilder builder=(context,animation){
      return _buildItem(removeditem, animation, i);
    };
  _key.currentState!.removeItem(i,builder);
  }
  void _addItem (){
    int i = _Items.length>0?_Items.length:0;
    _Items.insert(i,"items${_Items.length+1}");
    _key.currentState!.insertItem(i);
  }
      }