import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instakilogram/models/photo.dart';

class ListPhoto extends StatelessWidget {

  List<Photo> listPhoto;

  ListPhoto({this.listPhoto});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listPhoto.length,
        itemBuilder: (context, index){
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16.0,left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20.0,
                            child: ClipOval(
                                child: Image.network(
                                  listPhoto[index].imgUser,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                          ),
                          Text(
                            listPhoto[index].username,
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'SF-Medium',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      )),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                ),
                Image.network(
                  listPhoto[index].imgContent,
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            IconButton(icon: SvgPicture.asset('assets/icons/ic_love_def.svg'), onPressed: (){}),
                            IconButton(icon: SvgPicture.asset('assets/icons/ic_comment.svg', height: 24, width: 24,), onPressed: (){}),
                            IconButton(icon: SvgPicture.asset('assets/icons/ic_dm.svg', height: 24, width: 24,), onPressed: (){}),
                          ],
                        ),
                      ),
                      IconButton(icon: SvgPicture.asset('assets/icons/ic_bookmark.svg', height: 24, width: 24,), onPressed: (){}),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Text(
                    '${_convertComma(listPhoto[index].likes)} likes',
                    style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'SF-Medium',
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: '${listPhoto[index].username} ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'SF-Medium',
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: listPhoto[index].descContent,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'SF-Medium',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

String _convertComma(int value){
  RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  Function mathFunc = (Match match) => '${match[1]},';

  String stringValue = value.toString();
  return stringValue.replaceAllMapped(reg, mathFunc);
}
