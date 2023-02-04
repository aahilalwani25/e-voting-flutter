import 'package:evoting_application/MVC/View/Search.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  bool dark_mode=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('email here'),
                    Text('cnic here')
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: (){

              },
            ),
            ListTile(
              title: const Text('Cast your vote'),
              leading: const Icon(Icons.how_to_vote_sharp),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Search'),
              leading: const Icon(Icons.search),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>const Search()));
              },
            ),
            ListTile(
              title: const Text('Request Poll'),
              leading: const Icon(Icons.where_to_vote),
              onTap: () {},
            ),
            ListTile(
              title: const Text('View Results'),
              leading: const Icon(Icons.fact_check),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Sign out'),
              leading: const Icon(Icons.power_settings_new),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Text('Theme Mode'),
                  Switch(
                    value: dark_mode, 
                    onChanged: (value){
                     setState(() {
                       dark_mode=value;
                     });

                  })
                ],
              ),
              leading: dark_mode?const Icon(Icons.light_mode): const Icon(Icons.dark_mode),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Dashboard'),
      ),
    );
  }
}
