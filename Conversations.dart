import 'package:flutter/material.dart';
import 'package:psycare/model/conversationList.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

TextEditingController _searchController = new TextEditingController();

class _ConversationsState extends State<Conversations> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                        "https://randomuser.me/api/portraits/men/11.jpg"),
                          fit: BoxFit.cover)),
                      ),
                    Text(
                      "Chats",
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.edit)
                ],
              ),
              SizedBox(
              height: 15,
            ),
              Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                cursorColor: Color(0xFF000000),
                controller: _searchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF000000).withOpacity(0.5),
                    ),
                    hintText: "Search",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _conversations(context)
            ],
          ),
        ),
      ),
    );
  }


  _conversations(BuildContext context) {
    return Column(
      children: List.generate(conversationList.length, (index) {
        return InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      // conversationList[index]['hasStory'] ? 
                      // Container(
                      //   decoration: BoxDecoration(
                      //       shape: BoxShape.circle,
                      //       border:
                      //           Border.all(color: Colors.blueAccent, width: 3)),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(3.0),
                      //     child: Container(
                      //       width: 75,
                      //       height: 75,
                      //       decoration: BoxDecoration(
                      //           shape: BoxShape.circle,
                      //           image: DecorationImage(
                      //               image: NetworkImage(
                      //                   conversationList[index]['imageUrl']),
                      //               fit: BoxFit.cover)),
                      //     ),
                      //   ),
                      // )
                      // : 
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    conversationList[index]['imageUrl']),
                                fit: BoxFit.cover)),
                      ),
                      conversationList[index]['isOnline']
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xFF66BB6A),
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Color(0xFFFFFFFF), width: 3)),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      conversationList[index]['name'],
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        conversationList[index]['message'] +
                            " - " +
                            conversationList[index]['time'],
                        style: TextStyle(
                            fontSize: 15, color: Color(0xFF000000).withOpacity(0.7)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }




}

