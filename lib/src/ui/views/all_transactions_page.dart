import 'package:flutter/material.dart';
import 'package:mobile/src/ui/views/dashboard/dashboard.dart';
import 'package:mobile/src/ui/views/transaction_details_page.dart';
import 'transactions/transaction_completed.dart';
import 'transactions/transaction_confirm_transfer.dart';
import 'transactions/transaction_first_step.dart';
import 'transactions/transaction_new_transfer.dart';

class AllTransactionsPage extends StatefulWidget {
  @override
  _AllTransactionsPageState createState() => _AllTransactionsPageState();
}

class _AllTransactionsPageState extends State<AllTransactionsPage> {
  String dropdownValue = 'CMR188976560-01';
  String recieverownValue = 'CMR188976560-01';

  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        TransactionWidgetFirstStep(
          pageController: _pageController,
        ),
        TransactionWidgetNewTransfer(
          pageController: _pageController,
        ),
        ConfirmTransferStepWidget(
          pageController: _pageController,
        ),
        TransactionConfirmTransaction(
          pageController: _pageController,
        ),
        TransactionDetailsPage(
          pageController: _pageController,
        ),
      ],
    ));
  }
}

// New Transfer Widget
