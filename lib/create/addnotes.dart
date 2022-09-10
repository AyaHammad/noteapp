import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AddNotesState();
  }
}

class AddNotesState extends State<AddNotes> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Note'),
        ),
        body: Container(
          child: Column(children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                    maxLength: 30,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Title Note',
                        prefixIcon: Icon(Icons.note))),
                TextFormField(
                    minLines: 1,
                    maxLines: 3,
                    maxLength: 200,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: ' Note',
                        prefixIcon: Icon(Icons.note))),
                RaisedButton(
                  textColor: Colors.white,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: EdgeInsets.all(20),
                            height: 170,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'please choose image',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(10),
                                          child: Row(children: [
                                            Icon(
                                              Icons.photo_outlined,
                                              size: 30,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'From Gallery',
                                              style: TextStyle(fontSize: 20),
                                            )
                                          ]))),
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(10),
                                          child: Row(children: [
                                            Icon(Icons.camera_alt_outlined),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'From camera',
                                              style: TextStyle(fontSize: 20),
                                            )
                                          ]))),
                                ]),
                          );
                        });
                  },
                  child: Text('Add image for note'),
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  textColor: Colors.white,
                  child: Text('Add note',
                      style: Theme.of(context).textTheme.headline6),
                ),
              ],
            ))
          ]),
        ));
  }
}
