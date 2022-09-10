import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  State<StatefulWidget> createState() {
    return signState();
  }
}

class signState extends State<Sign> {
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
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'email',
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
                      Text('If you have account '),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('login');
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
                        
                      },
                      child: Text(
                        'Sign up',
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
