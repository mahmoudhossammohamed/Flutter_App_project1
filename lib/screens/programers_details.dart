import 'package:flutter/material.dart';
import 'package:flutter2/models/programers.dart';
import 'package:flutter2/screens/programer_list.dart';
class ProgramerDetails extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Programer Details'),
      centerTitle: true,
    ),
      bottomNavigationBar: bottonNavBar(),
      body: Column(
        children: [Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
                radius: 50,
              ),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Mahmoud Hossam",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(width: 4,),

                  ],
                ),
                SizedBox(height: 15),
                Text("Software Engineer",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold


                  ),),
                SizedBox(height: 15,),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star, color: Colors.yellow,),
                    Icon(Icons.star_half_outlined, color: Colors.yellow,),
                    SizedBox(width: 4,),
                    Text('4.9',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                      ),)
                  ],
                )

              ],
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Short Details', style: TextStyle(
                fontSize: 18,
              )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Tremble technically like a boldly klingon.Final stigmas lead to the peace.Make it so, voyage!Processors yell with core!The self fears. Tremble technically like a boldly klingon.'),
            ),
            SizedBox(height: 10),
            Text('Location',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.grey,),
                Text('st.main entrance',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 5),
            Container(
              height: 200,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                      image: AssetImage("assets/8.jpeg")),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: (){},
                child: Text('Request'),
                )

          ],
        )]
      ),
    );
  }
  Widget bottonNavBar(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_active), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Schedule'),
        BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
      ],
    );
  }
  
}
