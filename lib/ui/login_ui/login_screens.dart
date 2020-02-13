import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instakilogram/ui/main/main_screens.dart';

class LoginScreens extends StatefulWidget {
  static const String routeName = '/LoginScreens';

  @override
  _LoginScreensState createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {

  var _textUserController = TextEditingController();
  var _textPassController = TextEditingController();
  bool stateVisiblePass = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Instakilogram',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Billabong',
                      fontWeight: FontWeight.bold,
                      fontSize: 52,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                ),
                RaisedButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                    color: Colors.blue,
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/facebook_white.svg'),
                        Container(
                          margin: EdgeInsets.all(8.0),
                        ),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF-Medium',
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                          thickness: 2.0,
                        )
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: 'SF-Medium',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                    ),
                    Expanded(
                        child: Divider(
                          thickness: 2.0,
                        )
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                ),
                TextField(
                  controller: _textUserController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hasFloatingPlaceholder: false,
                    hintText: "Phone number, username, or email",
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'SF-Medium'
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                ),
                TextField(
                  controller: _textPassController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'SF-Medium'
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                ),
                RaisedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, MainScreens.routeName);
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                    color: Colors.blue,
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF-Medium',
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                ),
                Center(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: 'SF-Regular',
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: 'SF-Regular',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        ' Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'SF-Medium',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
