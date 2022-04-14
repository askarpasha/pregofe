// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/navigation_drawer.dart';
import 'package:flutter_application/splash.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_application/image_data.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  // await Future.delayed(const Duration(seconds: 1));
  runApp( MyApp());
}



class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem ({
    required this.urlImage,
    required this.title,
    required this.subtitle,

  });
}
class MyApp extends StatefulWidget {
  
   const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool _isLoading;

 @override
 void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), (){
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
   }

  final List<String> imageList = [
    'https://i.ibb.co/zP0QPp4/slider1.jpg',
    'https://i.ibb.co/M9MPgH4/slider2.jpg',
    'https://i.ibb.co/6sy9p0q/slider3.jpg',
    'https://i.ibb.co/sWWzShj/slider4.jpg',
  ];

  get child => null;

  List<CardItem> items = [
      CardItem(
        urlImage:
        'https://i.ibb.co/9TCLNzQ/logo1.jpg',
        title: 'Preethi',
        subtitle: 'ji',
      ),
      CardItem(
        urlImage:
        'https://i.ibb.co/RHsDR10/logo2.jpg',
        title: 'Budget',
        subtitle: 'ji',
      ),
      CardItem(
        urlImage:
        'https://i.ibb.co/55yGBY0/logo4.jpg',
        title: 'Kubbah',
        subtitle: 'ji',
      ),
      CardItem(
        urlImage:
        'https://i.ibb.co/1qBBygR/logo3.jpg',
        title: '4p Mart',
        subtitle: 'ji',
      ),
      
      CardItem(
        urlImage:
        'https://i.ibb.co/18TDvnY/logo5.jpg',
        title: 'Famous',
        subtitle: 'ji',
      ),
      CardItem(
        urlImage:
        'https://i.ibb.co/3B34xqV/logo6.jpg',
        title: 'Lariz',
        subtitle: 'ji',
      ),
  ];

  @override
  Widget build(BuildContext context) {
    
      
    return MaterialApp(
      
      home: Scaffold(
        drawer:  NavigationDrawer(),
        appBar: AppBar(
        title:  Text('Prego'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
        
        body: SingleChildScrollView(
          
          child: SafeArea(
            
                // child: _isLoading
                // ? 

                // const Center(
                //   child:  CircularProgressIndicator(),
                // ):
              
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                
                //  _isLoading
                // ? const Center(
                //   child:  CircularProgressIndicator(),
                // ):
              
                 Padding(
                   
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     
                     children: [
                       
                       
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Colors.red,
                               border: Border.all(color: Colors.redAccent,width: 3)
                               ),

                             width: 55,
                             height: 55,
                           child: IconButton(
                             icon: const Icon(Icons.sports_basketball),
                             color: Colors.white,
                             onPressed: (){},

                           ),
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Colors.red,
                               border: Border.all(color: Colors.redAccent,width: 3)
                               ),

                             width: 55,
                             height: 55,
                           child: IconButton(
                             icon: const Icon(Icons.flight_sharp),
                             color: Colors.white,
                             onPressed: (){},

                           ),
                         ),
                       ),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Colors.red,
                               border: Border.all(color: Colors.redAccent,width: 3)
                               ),

                             width: 55,
                             height: 55,
                           child: IconButton(
                             icon: const Icon(Icons.electric_bike),
                             color: Colors.white,
                             onPressed: (){},

                           ),
                         ),
                       ),
                       
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Colors.red,
                               border: Border.all(color: Colors.redAccent,width: 3)
                               ),

                             width: 55,
                             height: 55,
                           child: IconButton(
                             icon: const Icon(Icons.local_grocery_store),
                             color: Colors.white,
                             onPressed: (){},

                           ),
                         ),
                       ),
                        
                        Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Colors.red,
                               border: Border.all(color: Colors.redAccent,width: 3)
                               ),

                             width: 55,
                             height: 55,
                           child: IconButton(
                             icon: const Icon(Icons.phone_iphone),
                             color: Colors.white,
                             onPressed: (){},

                           ),
                         ),
                       ),
                        
                     ],
                   ),
        
                 
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CarouselSlider(
                     options: CarouselOptions(
                       enlargeCenterPage: true,
                       enableInfiniteScroll: false,
                       autoPlay: true,
                      //  viewportFraction: 1,
                       height: 350,
                     ),
                     items: imageList.map((e) => ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Stack(
                         fit: StackFit.expand,
                         children: <Widget>[
                           Image.network(e,
                           
                           width: 800,
                           height: 350,
                           
                           fit: BoxFit.cover,
                          //  errorBuilder: (context, error, stackTrace) {
                          //    if(error != null && context !=null) {
                          //      return Imag
                          //    }
                          //  },
                          // 
                          
                          
                           )
                         ],
                       ),
                     )).toList(),
                     ),
                     
                 ),
                
        
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: const [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Shop List',
                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                       ),
                      ],
                   ),
                ),
        
                

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 120,
                    
                     
                     
                     child: ListView.separated(
                       scrollDirection: Axis.horizontal,
                       itemCount: 6,
                       separatorBuilder: (context, _) => SizedBox(width: 6),
                       itemBuilder: (context, index) => buildCard(item: items[index]),
                       ),
                         
                         
                     ),
                 ),
              
        
                
                
              ],
              
              
              
            ),
            
          ),
          
        ),
        
      ),
      

     
    );
    

    

  }

  Widget buildCard({
      required CardItem item,
    }) => Container(
      width: 100,
      height: 300,
      
     
      child: Column(
        children: [
          
          Expanded(
              // borderRadius: BorderRadius.circular(10.0),
               child: AspectRatio(
                 aspectRatio: 4/4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(item.urlImage),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),
                                ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Text(
              item.title,
              style: TextStyle(fontSize: 14, fontWeight:  FontWeight.bold),
            ),
            // Text(
            //   item.subtitle,
            //   style: TextStyle(fontSize: 12, fontWeight:  FontWeight.normal),
            // ),
            
        ],
        
      ),
        
    );
}

void setState(Null Function() param0) {
}