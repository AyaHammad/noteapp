import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  State<StatefulWidget> createState() {
    return logState();
  }
}

class logState extends State<Log> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset('images/logo.png')),
        Container(
            padding: EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'username',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(children: [
                      Text('If you havent account '),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('sign');
                          },
                          child: Text(
                            'click here',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ]),
                  ),
                  Container(
                    child: RaisedButton(
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('homepage');
                      },
                      child: Text(
                        'Log in',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
