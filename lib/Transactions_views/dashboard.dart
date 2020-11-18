import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';
import 'package:mobile/shared/const_color.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;

  // File _image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black,
            size: 40,
          ),
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/images/HIGHWEH_HORIZONTAL.png',
            fit: BoxFit.contain,
            height: 45,
          ),
          centerTitle: true,
          actions: [CircleAvatar()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ThemeColors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ThemeColors.SelectedItemColor,
          unselectedItemColor: ThemeColors.UnSelectedItemColor,
          onTap: (v) {
            // Respond to item press.
            setState(() => _currentIndex);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_on,
                  size: 30,
                ),
                label: ('Dashboad')),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: 'Accounts'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_atm_outlined,
                  size: 30,
                ),
                label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                label: 'Devices'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.place_outlined,
                  size: 30,
                ),
                label: 'Map'),
          ],
        ),

       
        body: Container(
         
        
          height: 150,
          width: 300,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
             
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Jane Doe',
                            style: TextStyle(
                                color: ThemeColors.LightText, fontSize: 14)),
                        TextSpan(
                            text: ' - Buisness',
                            style: TextStyle(
                              color: ThemeColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ))
                      ])),
                      SizedBox(height: 12),
                      Text('FCFA 34,700',
                          style: TextStyle(
                            color: ThemeColors.TransferCurrency,
                            fontSize: 18,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(child: Divider()),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Transfer',
                            style: TextStyle(color: ThemeColors.Text),
                          ),
                          Text(
                            'Recharge',
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                      

              ),
               Positioned(
                 top: -20,
                 left: 8,
                 child: Card(
                   elevation: 4,
                   color: Colors.green,
                   child: Padding(padding: const EdgeInsets.symmetric(
                     horizontal: 22.0, vertical: 18.0),
                     child: Center(child: Text("\$", style: TextStyle(color: Colors.white, fontSize: 20),),),
                     ),
                 ),
                ),



                

         

                       
             



            ],


       





          ),
        ), 
        
         
        
        
        
        
        
        );
  }
}
