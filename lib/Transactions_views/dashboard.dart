import "package:flutter/material.dart";
// import 'package:image_picker/image_picker.dart';
import 'package:mobile/shared/const_color.dart';
import 'package:pie_chart/pie_chart.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;


  Map<String, double> dataMap = {
    "Others": 1,
    "Business": 6,
    "Personal": 3,
    
  };

  // File _image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
          iconSize: 36,
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
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ThemeColors.SelectedItemColor,
        unselectedItemColor: ThemeColors.UnSelectedItemColor,
        onTap: (v) {
          // Respond to item press.
          setState(() => _currentIndex == 0);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_on,
                size: 30,
              ),
              label: ('Dashboad')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
                size: 30,
              ),
              label: 'Accounts'),
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
        child: SingleChildScrollView(
                  child: Column(
            
            children: [
              Container(
                  margin: EdgeInsets.all(35),
                  height: 170,
                  width: 323,
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
                               fontWeight: FontWeight.bold
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
                            style:
                                TextStyle(color: ThemeColors.Text, fontSize: 13),
                          ),
                          Text(
                            'Recharge',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -20,
                left: 15,
                width: 78,
                height: 78,
                child: Card(
                  elevation: 4,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 18.0),
                    child: Center(
                      child: Text(
                        "\$",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ),


Container(
                  margin: EdgeInsets.all(35),
                  height: 167,
                  width: 327,
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
                            text: ' - Personal',
                            style: TextStyle(
                              color: ThemeColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ))
                      ])),
                      SizedBox(height: 12),
                      Text('FCFA -900',
                          style: TextStyle(
                            color: Color(0xFFF44336),
                            fontSize: 18,
                            fontWeight: FontWeight.bold
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
                            'Pay Now',
                            style:
                                TextStyle(color: ThemeColors.Text, fontSize: 13),
                          ),
                          Text(
                            'Recharge',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -20,
                left: 15,
                width: 78,
                height: 78,
                child: Card(
                  elevation: 4,
                  color:  Color(0x0FFE53935),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 18.0),
                    child: Center(
                      child: Text(
                        "\$",
                        style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ),





                Container(
                  margin: EdgeInsets.all(35),
                  height: 170,
                  width: 323,
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
                            text: ' - Others',
                            style: TextStyle(
                              color: ThemeColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ))
                      ])),
                      SizedBox(height: 12),
                      Text('FCFA 2,700',
                          style: TextStyle(
                            color: ThemeColors.TransferCurrency,
                            fontSize: 18,
                               fontWeight: FontWeight.bold
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
                            style:
                                TextStyle(color: ThemeColors.Text, fontSize: 13),
                          ),
                          Text(
                            'Recharge',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),












              Positioned(
                top: -20,
                left: 15,
                width: 78,
                height: 78,
                child: Card(
                  elevation: 4,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 18.0),
                    child: Center(
                      child: Text(
                        "\$",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ),





               Container(
                  margin: EdgeInsets.all(35),
                  height: 170,
                  width: 323,
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
                            text: 'Devices',
                            style: TextStyle(
                                color: Color(0xFF6A707E), fontSize: 14)),
                        // TextSpan(
                        //     text: ' - Buisness',
                        //     style: TextStyle(
                        //       color: ThemeColors.black,
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w900,
                        //     ))
                      ])),
                      SizedBox(height: 12),
                      Text('4',
                          style: TextStyle(
                            color: Color(0xFF00ACC1),
                            fontSize: 18,
                               fontWeight: FontWeight.bold
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
                            'View more',
                            style:
                                TextStyle(color: ThemeColors.Text, fontSize: 13),
                          ),
                          // Text(
                          //   'Recharge',
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 13),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              ),





              Positioned(
                top: -20,
                left: 15,
                width: 78,
                height: 78,
                child: Card(
                  
                  elevation: 4,
                  color: Color(0xFF00ACC1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 18.0),
                    child: Center(
                      child: Icon(
                Icons.credit_card,
                size: 30,
              ),
                      // child: Text(
                      //   "\$",
                      //   style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      // ),
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ),








      
                Container(
              //  decoration: BoxDecoration(
              
              //   color: Colors.white,
              //   boxShadow: [
              //     BoxShadow(
              //       color: Color(0xFF999999),
              //       offset: Offset(0.0, 1.0), //(x,y)
              //       blurRadius: 6.0,
              //     ),
              //   ],
              // ),
                  margin: EdgeInsets.all(35),
                   height: 150,
                  width: 323,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Transactions',
                            style: TextStyle(
                                color: ThemeColors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                      
                      ])),
                      SizedBox(height: 12),
                     
                      SizedBox(
                        height: 20,
                      ),
                      
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.done_outline_outlined, color: Color(0xFF2ED47A),),
                             
                          Column(
                            children: [
                              Text(
                                'Jane Doe -> Jean Paul',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),

                              Text('"Money For the School Fees..."', 
                                style: TextStyle(color: Color(0xFF323C47), fontSize: 12, ),), 
                            ],
                          ),
                           Text("-7,300", style: TextStyle(color: Color(0xFFF7685B), fontSize: 14, fontWeight: FontWeight.bold))
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),












              Positioned(
                top: -20,
                left: 15,
                width: 78,
                height: 78,
                child: Card(
                  elevation: 4,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 18.0),
                    child: Center(
                     child:  Icon(
                Icons.grid_on,

                      // child: Text(
                      //   "\$",
                        // style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ),


      
                Container(
                  
                  margin: EdgeInsets.all(35),
                   height: 97,
                  width: 327,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      
              Card(
                
                 elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                 
                      
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.clear_rounded, color: Color(0xFFF7685B), size: 30,),
                             
                          Column(
                            children: [
                              Text(
                                'Jane Doe -> Jean Paul',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),

                              Text('"Money For the School Fees..."', 
                                style: TextStyle(color: Color(0xFF323C47), fontSize: 12, ),), 
                            ],
                          ),
                           Text("+300", style: TextStyle(color: Color(0xFF2ED47A), fontSize: 14, fontWeight: FontWeight.bold))
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),












                    ],
                  ),
                ),


                
                Container(
                  
                  margin: EdgeInsets.all(35),
                   height: 97,
                  width: 327,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      
              Card(
                
                 elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                 
                      
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.error_outline, color: Color(0xFF109CF1), size: 30,),
                             
                          Column(
                            children: [
                              Text(
                                'Jane Doe -> Jean Paul',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),

                              Text('"Money For the School Fees..."', 
                                style: TextStyle(color: Color(0xFF323C47), fontSize: 12, ),), 
                            ],
                          ),
                           Text("-1,350", style: TextStyle(color: Color(0xFFF7685B), fontSize: 14, fontWeight: FontWeight.bold))
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),












                    ],
                  ),
                ),






                

                Container(
                  margin: EdgeInsets.all(35),
                  height: 300,
                  width: 323,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
              Card(
                
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                     mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: '% Transactions / Accounts :',
                            style: TextStyle(
                                color: Color(0xFF192A3E), fontSize: 18)),
                       
                      ])),

                      SizedBox(height:10 ,),


                      PieChart(dataMap: dataMap, 
                       animationDuration: Duration(milliseconds: 800),
                       chartType: ChartType.ring,
                      // chartRadius: 200,
                       chartLegendSpacing: 1,
                         chartRadius: MediaQuery.of(context).size.width / 2.9,
                          colorList: colorList,
                          initialAngleInDegree: 90,
                            ringStrokeWidth: 10,
                            legendOptions: LegendOptions(legendPosition: LegendPosition.right,showLegends: false, ),
                         //   centerText: 
                        
                          chartValuesOptions: ChartValuesOptions(
       // showChartValueBackground: true,
       // showChartValues: true,
       // showChartValuesInPercentage: false,
       // showChartValuesOutside: false,
      ),
                      

                       
                      
                      ),


                       
                     
                     
                    ],
                  ),
                ),
              ),
           












              Positioned(
                
                top: -20,
                left: 10,
                width: 53.64,
                height: 60.03,
                child: Card(
                  
                  
                  elevation: 4,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 5.0),
                    child: Center(
                      child:Icon(Icons.pie_chart, color: Color(0xFFFFFFFF),)
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ),


































            ],
          ),
        ),
      ),
    );
  }
}
