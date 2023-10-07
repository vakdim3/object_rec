import 'package:flutter/material.dart';




class NavBar extends StatefulWidget {
   const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}





class _NavBarState extends State<NavBar> { 
  


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Wirte me on'),
            accountEmail: Text('vakdim3@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 2, 223),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      '')),
            ),
          ),
          
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites objects'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Report bugs'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request new functions'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],



        
      ),
    );
  }
}