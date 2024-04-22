import 'package:flutter/material.dart';

class WhatsApp1 extends StatelessWidget {
  const WhatsApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WhatsApp2());
  }
}

class WhatsApp2 extends StatefulWidget {
  const WhatsApp2({super.key});

  @override
  State<WhatsApp2> createState() => _WhatsApp2State();
}

class _WhatsApp2State extends State<WhatsApp2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text("WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              actions: [
                PopupMenuButton(itemBuilder: (BuildContext context) =>
                  [
                  PopupMenuItem(child: Text("Settings"))
                  ]
                )
              ],
              bottom: TabBar(tabs: [
                SizedBox(width: 10, child: Tab(child: Icon(Icons.groups))),
                Tab(child: Text("Chats")),
                Tab(child: Text("Updates")),
                Tab(child: Text("Calls")),
              ]),
            ),
            body: TabBarView(children: [
              Column(
                children: [
                  ListTile(
                    title: Text("New community"),
                    leading: CircleAvatar(
                      child: Icon(Icons.groups),
                    ),
                  ),
                  Divider(height: 10, thickness: 5),
                  ListTile(
                      title: Text("Cubing Kerala"),
                      leading: CircleAvatar(
                        child: Icon(Icons.groups),
                      ))
                ],
              ),
              Column(children: [
                ListTile(
                  title: Text("Saurav"),
                  subtitle: Text("Hey"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  trailing: Text("7:30 AM"),
                ),
                ListTile(
                  title: Text("Adnan"),
                  subtitle: Text("Hi"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  trailing: Text("8:30 AM"),
                ),
                ListTile(
                  title: Text("Manu"),
                  subtitle: Text("Haha"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  trailing: Text("9:30 AM"),
                ),
                ListTile(
                  title: Text("Naseef"),
                  subtitle: Text("It's me"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  trailing: Text("10:30 AM"),
                ),
              ]),
              Column(
                children: [
                  /*Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, bottom: 10.0, right: 325),
                    child: Text("Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),*/
                  ListTile(
                    trailing: PopupMenuButton(itemBuilder: (BuildContext context)=>
                    [
                      PopupMenuItem(child: Text("Status privacy"),)
                    ]
                    ),
                      title: Text("Status",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                  ListTile(
                      title: Text("My Status"),
                      subtitle: Text("Tap to add status update"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg"),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 275),
                    child: Text(
                      "Recent updates",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text("Saurav"),
                    subtitle: Text("47 minutes ago"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  ),
                  ListTile(
                    title: Text("Adnan"),
                    subtitle: Text("1:25 PM"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  ),
                  ListTile(
                    title: Text("Manu"),
                    subtitle: Text("12:54 PM"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  ),
                  ListTile(
                    title: Text("Naseef"),
                    subtitle: Text("12:26 PM"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    title: Text("Create call link"),
                    subtitle: Text("Share a link for your WhatsApp call"),
                    leading: CircleAvatar(child: Icon(Icons.link)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 325),
                    child: Text("Recent",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                    title: Text("Saurav"),
                    subtitle: Text("-> 47 minutes ago"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                    trailing: Icon(Icons.call,color: Colors.green),
                  ),
                  ListTile(
                    title: Text("Adnan"),
                    subtitle: Text("<- March 2, 11:16 AM"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                    trailing: Icon(Icons.call,color: Colors.green),
                  ),
                  ListTile(
                    title: Text("Manu"),
                    subtitle: Text("-> February 28, 8:37 PM"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                    trailing: Icon(Icons.call,color: Colors.green),
                  ),
                  ListTile(
                    title: Text("Naseef"),
                    subtitle: Text("<- February 27, 5:47 PM"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/Pred.jpg")),
                    trailing: Icon(Icons.call,color: Colors.green),
                  )
                ],
              )
            ])));
  }
}

void main() {
  runApp(WhatsApp1());
}
