import 'package:flutter/material.dart';

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

class People extends StatelessWidget {
   People({Key? key}) : super(key: key);

  

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop List'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
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