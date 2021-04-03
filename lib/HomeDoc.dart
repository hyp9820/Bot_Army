import 'package:flutter/material.dart';
import 'package:psycare/Conversations.dart';


class HomeDoc extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

TextEditingController _searchController = new TextEditingController();

class DoctorrModel {
  String imgURL;
  String name;
  String address;
  String time;
  DoctorrModel({this.imgURL, this.name, this.address, this.time});
}

class _HomeState extends State<HomeDoc> {


  List<DoctorrModel> doctorList = [
  DoctorrModel(
    name: "Novac",
    imgURL: "https://randomuser.me/api/portraits/men/31.jpg",
    address:"Ghatkopar",
    time: "5:00 pm"
  ),
    DoctorrModel(
    name: "Derick",
    imgURL: "https://randomuser.me/api/portraits/men/81.jpg",
    address:"Ghatkopar West",
    time: "7:00 am"
  ),
   DoctorrModel(
    name: "Emannual",
    imgURL: "https://randomuser.me/api/portraits/men/35.jpg",
    address:"Vidyvihar",
    time: "9:00 am"
  ),
  DoctorrModel(
    name: "Gracy",
    imgURL: "https://randomuser.me/api/portraits/women/56.jpg",
    address:"Garodia",
    time: "9:00 am"
  )

];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20.0, right: 120.0)),
              Text(
                "Give yourself time to heal. We are here to help you.",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
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
                height: 20.0,
              ),
              Text(
                "Our Top Psychatrists:",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: doctorList.length,
                  itemBuilder: (context, index) {
                    return PopularTours(
                      imgURL: doctorList[index].imgURL,
                      name: doctorList[index].name,
                      address: doctorList[index].address,
                      time: doctorList[index].time,
                    );
                  }),
              SizedBox(
                height: 24,
              )
            
            
            ], 
          ),
        ),

      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          
          setState(() {
                      Navigator.push(
                          context,
                        MaterialPageRoute(
                             builder: (context) => Conversations()
                            ),
                          );
                    });
        },
        label: const Text('Chat'),
        icon: const Icon(Icons.message_outlined),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class PopularTours extends StatelessWidget {
  final String imgURL;
  final String name;
  final String address;
  final String time;
  PopularTours(
      {
      @required this.imgURL,
      @required this.name,
      @required this.address,
      @required this.time});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [ 
            Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    imgURL,),
                                fit: BoxFit.cover)),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,//title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4E6059)),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  address,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4E6059)),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4E6059)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
