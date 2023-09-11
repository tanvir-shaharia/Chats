import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CatagorySelector extends StatefulWidget {
  const CatagorySelector({super.key});

  @override
  State<CatagorySelector> createState() => _CatagorySelectorState();
}

class _CatagorySelectorState extends State<CatagorySelector> {
  int selectIndex=0;
  List<String> catagories =['Messages','Online','Groups','Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectIndex=index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
              child: Text(catagories[index],style: TextStyle(
                color: index == selectIndex ? Colors.white : Colors.white60 ,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                letterSpacing: 1.2
              ),),
            ),
          );
      },

      ),
    );
  }
}
