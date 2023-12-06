import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String image;

  Chat({required this.name, required this.image});
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  final List<Chat> chats = [
    Chat(name: 'John Doe', image: 'images/7.jpg'),
    Chat(name: 'Jane Smith', image: 'images/5.jpg'),
    Chat(name: 'Michael Johnson', image: 'images/6.jpg'),
    Chat(name: 'John Doe', image: 'images/7.jpg'),
    Chat(name: 'Jane Smith', image: 'images/9.jpg'),
    Chat(name: 'Michael Johnson', image: 'images/6.jpg'),
    Chat(name: 'farax ali', image: 'images/5.jpg'),
    Chat(name: 'amino jamac', image: 'images/9.jpg'),
    Chat(name: 'Michael Johnson', image: 'images/6.jpg'),
  ];
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () {
                // Camera functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Search functionality
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                // Handle more options action
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'new_group',
                    child: Text('New group'),
                  ),
                  PopupMenuItem<String>(
                    value: 'new_broadcast',
                    child: Text('New broadcast'),
                  ),
                  PopupMenuItem<String>(
                    value: 'whatsapp_web',
                    child: Text('WhatsApp Web'),
                  ),
                  PopupMenuItem<String>(
                    value: 'starred_messages',
                    child: Text('Starred messages'),
                  ),
                  PopupMenuItem<String>(
                    value: 'settings',
                    child: Text('Settings'),
                  ),
                ];
              },
            ),
          ],
          backgroundColor: Color.fromARGB(255, 16, 124, 73),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.groups_3)),
              Tab(text: "Chats "),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Groups Screen
            Scaffold(
              body: Center(
                child: Icon(Icons.groups,size: 100,color: Colors.lightGreen,)
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 16, 124, 73),
                hoverColor: Colors.blueGrey,
                onPressed: () {
                  // Handle floating action button tap for the Groups screen
                },
                child: Icon(Icons.groups, ),
              ),
            ),

            // Chats Screen
            Scaffold(
              body: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chat.image),
                    ),
                    title: Text(chat.name),
                    subtitle: Text('You called ${chat.name}'),
                    onTap: () {
                      // Handle chat item tap
                    },
                  );
                },
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 16, 124, 73),
                onPressed: () {
                  // Handle floating action button tap for the Chats screen
                },
                child: Icon(Icons.chat),
              ),
            ),

            // Status Screen
            Scaffold(
              body: ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/9.jpg'),
              ),
              if (index == 0)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color(0xFF25D366),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
          title: Text('My Status'),
          subtitle: Text('Tap to add status update'),
        );
      },
    ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 16, 124, 73),
                onPressed: () {
                  // Handle floating action button tap for the Status screen
                },
                child: Icon(Icons.photo_camera),
              ),
            ),

            // Calls Screen
            Scaffold(
              body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/7.jpg'),
          ),
          title: Text('mohamed jamac '),
          subtitle: Icon(Icons.call_made, size: 16),
          trailing: Icon(Icons.call, size: 24),
        );
     },
   ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 16, 124, 73),
                onPressed: () {
                   
                  // Handle floating action button tap for the Calls screen
                },
                child: Icon(Icons.call),
              ),
            ),
          ],
        ),
      ),
    );
  }
}