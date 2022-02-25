import 'package:flutter/material.dart';
class Chat3 extends StatelessWidget {
  final img;
  final text;
  const Chat3({this.img='assets/images/moon.png', this.text='الاذكار'}) ;
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: double.infinity,
    //     padding: const EdgeInsets.all(15),
    //     decoration: BoxDecoration(
    //       color: Colors.green[800]!.withOpacity(0.5),
    //       borderRadius: BorderRadius.circular(10),),
    //   child: ListTile(
    //     leading:TextButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 10,), label: Text('أذهب',style: TextStyle(color: Colors.white,fontSize: 10),),),
    //       trailing: Row(
    //         children: [
    //           Text(text,style: TextStyle(color: Colors.yellow[100],fontSize: 20,fontWeight: FontWeight.bold),),
    //         SizedBox(
    //           width: 15,
    //         ),
    //         Image.asset(
    //           img,
    //           width: 40,
    //           height: 40,
    //         ),
    //       ],
    //       ),
    //   ),
    // );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.green[800]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            TextButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 10,), label: Text('أذهب',style: TextStyle(color: Colors.white,fontSize: 10),),),
          Spacer(),
          Text(text,style: TextStyle(color: Colors.yellow[100],fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(width: 15,),
          Image.asset(img,width: 40,height: 40,),
        ],
      ),
    );
  }
}
