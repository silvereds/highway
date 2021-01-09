import 'package:flutter/material.dart';
import 'package:mobile/Transactions_views/All_Transactions/transactions.dart';
import 'package:mobile/Accounts/All_accouts/all_accoutsView.dart';

class BottomNavigationBarView extends StatefulWidget {
  @override
  _BottomNavigationBarViewState createState() => _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {

int _currentIndex = 0;
Widget _transactions = TransactionsView();
Widget _accounts =   AccountsView();



 getBody(){
      if(this._currentIndex == 0) {
      return this._transactions;
    } else if(this._currentIndex==1) {
      return this._accounts;
    } else {
      return this._transactions;
    }
}

void onTapHandler(int index){
  this.setState(() {
    this._currentIndex = index;
  }
 
  );
   getBody();
}



  @override
  Widget build(BuildContext context) {
   return  BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 18,
        backgroundColor: Color(0xFFFFFFFF),
        type: BottomNavigationBarType.fixed,
        selectedItemColor:  Color(0xFF53B27F),
        unselectedItemColor: Color(0xFF334D6E),
        onTap: (int index) {
          // Respond to item press.
         this.onTapHandler(index);
          
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
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
      
      
    );
  }
}

      