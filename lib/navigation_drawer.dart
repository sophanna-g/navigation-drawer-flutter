import 'package:flutter/material.dart';
import 'package:navigation_drawer/main.dart';

import 'favorite_page.dart';
import 'user_page.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({super.key});

  @override
  State<NavigationDrawerScreen> createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        centerTitle: true,
        elevation: 0,
        title: const Text('Navigation Drawer'),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );


  Widget buildHeader(BuildContext context) => Material(
    color: Colors.green.shade700,
    child: InkWell( onTap: () {
      //Close navigation drawer before
      Navigator.pop(context);

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserPage()));
    },
    child: Container(
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24
      ),
      child: const Column(
        children: [
          CircleAvatar(
            radius: 52,
            backgroundImage: NetworkImage(
              'https://img.pikbest.com/wp/202345/male-avatar-image-in-the-circle_9588978.jpg!sw800'
            ),
          ),
          SizedBox(height: 12,),
          Text('Sophanna', style: TextStyle(fontSize: 28,color: Colors.white),),
          Text('sophanna.g@gmail.com', style:  TextStyle(fontSize: 16, color: Colors.white),),
        ],
      ),
      ),
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(14),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () => 
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomePage(),
            ))
          ,
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: const Text('Favorite'),
          onTap:() {
            //Close Navigation drawer before
            Navigator.pop(context);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FavouitesPage()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.workspaces_outline),
          title: const Text('Workflow'),
          onTap: () {
            //Todo
          },
        ),
        ListTile(
          leading: const Icon(Icons.update),
          title: const Text('Update'),
          onTap: () {
            //Todo
          },
        ),
        const Divider(color: Colors.black54,),
  
        ListTile(
          leading: const Icon(Icons.account_tree_outlined),
          title: const Text('Plugins'),
          onTap: () {
            //Todo
          },
        ),
        ListTile(
          leading: const Icon(Icons.notifications),
          title: const Text('Notification'),
          onTap: () {
            //Todo
          },
        )
      ],
    ),
  );
}