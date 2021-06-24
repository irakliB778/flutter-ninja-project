import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:IrakliCard()
  ));
}
class IrakliCard extends StatefulWidget {
  @override
  _IrakliCardState createState() => _IrakliCardState();
}

class _IrakliCardState extends State<IrakliCard> {
  int iraklilevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Irakli ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            iraklilevel++;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding:EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/picture1.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[300],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'irakli barbaqaZe',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.0
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text( 'Current level',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$iraklilevel',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w500,
                  fontSize: 25.0,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.grey[700],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'iraklibarbaqadze@itvet.ge',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    letterSpacing: 2.0
                  ),
                ),
              ],
            )

          ],

        ),

      ),

    );
  }
}

