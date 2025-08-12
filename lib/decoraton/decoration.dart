import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget containers(String url,String text1,String text2,String text3,VoidCallback onpressed){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width:double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white, 
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2, 
            blurRadius: 5,   
            offset: Offset(0, 3), 
          ),
        ],
      ),
      child: Column(
        children: [
           ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              url,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Gap(10),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(children: [
            Text(text1,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 25,color: Colors.black),),
            Text(text2)
           ],),
         ),
         Center(
          child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), 
      ),
                ),  
            onPressed: onpressed, child: Text(text3,style: TextStyle(color: Colors.white),)),
         ),
         Gap(10)
        ],
      ),
    ),
  );
}