import 'package:belvoir_app/User/UserView/userrentel/user_rentel.dart';
import 'package:belvoir_app/User/UserView/usertiloring/user_tiloring.dart';
import 'package:belvoir_app/constants/image_constants.dart';
import 'package:belvoir_app/constants/text_constants.dart';
import 'package:belvoir_app/decoraton/decoration.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
final carouselImg=[
  ImageConstants.carousel1,
   ImageConstants.carousel2,
    ImageConstants.carousel3
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70), 
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(15),
 bottomRight: Radius.circular(15),
    ),
          child: AppBar(
            actions: [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart,color: Colors.white,),
              )
            ],
            title: Text("Belvoir",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            backgroundColor: Colors.purple
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            children: [
              Gap(10),
                CarouselSlider(items: carouselImg.map((img){
                  return ClipRRect(
                   borderRadius:BorderRadius.circular(15),
                      child: Image.network(img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      ),
                  );
                }).toList(),
                 options: CarouselOptions(
                   height: 230,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                  autoPlayInterval: const Duration(seconds: 3),
                 )),
                       Gap(20),
            containers(ImageConstants.clothingImg,
            TextConstants.clothing1,
            TextConstants.clothing2,
            TextConstants.bookNow,
            (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>UserRentel()));
            }   
            
            ),
                   Gap(20),
           containers(ImageConstants.stichingImg,
           TextConstants.stiching1,
           TextConstants.stiching2,
                 TextConstants.bookNow,
           (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>UserTiloring()));
            }
           )

            ],
          ),
        ),
      ),
    );
  }
}