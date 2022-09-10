import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List notes = [
    {
      'note': 'Lorem Ipsum Lorem Ipsum 1 Lorem Ipsum Lorem Ipsum',
      'image': '1.png'
    },
    {
      'note': 'Lorem Ipsum Lorem Ipsum 2 Lorem Ipsum Lorem Ipsum',
      'image': '1.png'
    },
    {
      'note': 'Lorem Ipsum Lorem Ipsum 3 Lorem Ipsum Lorem Ipsum',
      'image': '1.png'
    },
    {
      'note': 'Lorem Ipsum Lorem Ipsum 4 Lorem Ipsum Lorem Ipsum',
      'image': '1.png'
    },
    {
      'note': 'Lorem Ipsum Lorem Ipsum 5 Lorem Ipsum Lorem Ipsum',
      'image': '1.png'
    }
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Home Page')),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed('addnotes');
          },
        ),
        body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(
                    key: Key('$i'),
                    child: ListNotes(
                      notes: notes[i],
                    ));
              }),
        ));
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  ListNotes({this.notes});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: [
      Expanded(
        flex: 1,
        child: Image.asset(
          'images/1.png',
          fit: BoxFit.fill,
          height: 100,
        ),
      ),
      Expanded(
          flex: 3,
          child: ListTile(
            title: Text("Title"),
            subtitle: Text("${notes['note']}"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ))
    ]));
  }
}
