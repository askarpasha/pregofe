import 'package:flutter/material.dart';
import 'package:flutter_application/drawer_item.dart';
import 'package:flutter_application/pages/people.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 40,),
              DrawerItem(
                name: 'Shop List',
                icon: Icons.list,
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'New Offers',
                  icon: Icons.newspaper,
                  onPressed: ()=> onItemPressed(context, index: 1)
              ),
             
             
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Exit',
                  icon: Icons.logout,
                  onPressed: ()=> onItemPressed(context, index: 5)
              ),

            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}){
    Navigator.pop(context);

    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => People()));
        break;
    }
  }

  Widget headerWidget() {
    const url = 'https://www.clipartmax.com/png/middle/248-2487966_matthew-man-avatar-icon-png.png';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Guest User', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('guest@email.com', style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );

  }
}


