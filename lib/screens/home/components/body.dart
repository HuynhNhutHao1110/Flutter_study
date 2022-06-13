import 'package:day2_legomindset_workingwithfigma/config.dart';
import 'package:day2_legomindset_workingwithfigma/data/User.dart';
import 'package:flutter/material.dart';
class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
            padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 23, right: 16.0),
            children: <Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/ic_Arrow_Left.png'),
                          iconSize: 28.0 ,
                          alignment: Alignment.centerLeft,
                        ),
                  IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/ic_plus.png'),
                          iconSize: 28.0,
                          alignment: Alignment.centerRight,
                        ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0.0,top: 23, bottom: 24, right: 16.0),
                  child: Text("Messages",
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 34,
                      fontWeight: FontWeight.normal,
                      color: Color(0xffFFFFFF)
                    ),
                  ),
              ),
              const Divider(
                height: 0,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Row(
                      children: List.generate(users.length, (index){
                        return Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                              width: 60,
                              height: 60,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                        image: NetworkImage(users[index]['img']),
                                        fit: BoxFit.cover)
                                      ),
                                    ),
                                    Positioned(
                                      top: 48,
                                      left: 45,
                                      right: 3,
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                            color: online,
                                            shape: BoxShape.circle,
                                            border:
                                            Border.all(color: Colors.white, width: 2)),
                                      ),
                                    ),
                                  ],
                               ),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              SizedBox(
                                height: 13,
                                width: 70,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      users[index]['name'],
                                      overflow: TextOverflow.ellipsis,  // tran sizebox hien ...
                                      style: const TextStyle(
                                        fontFamily: 'Avenir',
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    )
                                ),
                              )
                           ],
                          ),
                        );
                      },),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 0,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 10,
              ),
             SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Column(
                 children: <Widget>[
                   Column(
                     children: List.generate(userMessages.length, (index) {
                       return Column(
                           children: <Widget>[
                             InkWell(
                             onTap: () {},
                             child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10,),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 65,
                                    height: 65,
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                             shape: BoxShape.circle,
                                             image: DecorationImage(
                                               image: NetworkImage(userMessages[index]['img']),
                                               fit: BoxFit.cover
                                             )
                                          ),
                                        ),
                                        (userMessages[index]['num_mess'].toString().isNotEmpty) ? Positioned(
                                          top: 42,
                                          left: 40,
                                          child: Container(
                                            width: 18,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: num_mess,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.white, width: 2),
                                            ),
                                            child: Center(
                                              child: Text(
                                                userMessages[index]
                                                ['num_mess'],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ) : Container(),
                                      ],
                                    ),
                                  ),
                                   Expanded(
                                     child: Padding(padding: const EdgeInsets.only(left: 20,),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             Row(
                                               children: <Widget>[
                                                 Text(userMessages[index]['name'],
                                                   style: const TextStyle(
                                                     color: Colors.white,
                                                     fontSize: 17,
                                                     fontWeight: FontWeight.w600,
                                                     overflow: TextOverflow.ellipsis,
                                                   ),
                                                 ),
                                                 Expanded(child: Container(
                                                   width: 80,
                                                   padding:
                                                   const EdgeInsets.only(left: 10),
                                                   alignment: Alignment.centerRight,
                                                   child: Text(
                                                     userMessages[index]['created_at'],
                                                     style: const TextStyle(
                                                         color: time_mess),
                                                   ),
                                                 ),
                                                 ),
                                               ],
                                             ),
                                             Text(userMessages[index]['message'],
                                               style: const TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 17,
                                                 fontWeight: FontWeight.w300,
                                                 overflow: TextOverflow.ellipsis,
                                               ),
                                             ),
                                             const Padding(padding: EdgeInsets.only(top: 20),
                                               child: Divider(
                                                 height: 0,
                                                 thickness: 2,
                                                 indent: 0,
                                                 endIndent: 0,
                                                 color: Colors.black12,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                 ],
                              ),
                            ),
                            ),
                          ],
                      );
                    }
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
