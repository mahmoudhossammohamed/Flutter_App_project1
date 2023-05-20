import 'package:flutter/material.dart';
import 'package:flutter2/models/programers.dart';
import 'package:flutter2/screens/programers_details.dart';
class ProgramerList extends StatefulWidget {
  const ProgramerList({Key? key}) : super(key: key);

  @override
  State<ProgramerList> createState() => _ProgramerListState();
}

class _ProgramerListState extends State<ProgramerList> {
  int selecteditem = 0;
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: Text('Programers List'),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.dehaze,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottonNavBar(),
      body: listProgramers(),
    );
  }
  Widget bottonNavBar(){
    return BottomNavigationBar(
      currentIndex: selecteditem,
      onTap: (index){
        setState(() {
          selecteditem = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Schedule'),
        BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
      ],
    );
  }

  Widget programerCard(Programer programer){
    return GestureDetector(
      onTap: (){
        //print("Clicked");
        Navigator.of(context).push(MaterialPageRoute(builder:(_)=>ProgramerDetails()));
      },
      child: Card(
        child: Row(
          children: [
            //Image.asset('assets/1.jpg')
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(programer.urlPhoto),
                radius: 50,
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(programer.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(width: 4,),
                    Icon(Icons.star, color: Colors.yellow,),
                    SizedBox(width: 4,),
                    Text('4.9',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                      ),)
                  ],
                ),
                SizedBox(height: 15),
                Text(programer.speciality,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold


                  ),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Icon(
                        Icons.location_pin, color: Colors.grey
                    ),
                    SizedBox(width: 5),
                    Text(programer.address,
                      style: TextStyle(
                          color: Colors.grey
                      ),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget listProgramers(){
    Size size = MediaQuery.of(context).size;
    return ListView(
        children: programers.map((e) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width,
              height: size.height/6,
              //color: Colors.limeAccent,
              child: programerCard(e),
            ),
          );
        }).toList()
    );
  }
}
