import 'package:eyubank/Screens/Add_Customer/add_user.dart';
import 'package:flutter/material.dart';
import 'package:eyubank/Screens/Balance_Check/bank_list.dart';
import 'package:eyubank/Screens/Transfer_Balance/trans_list.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Net Banking App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        children: [
          //Spacer(flex: 2,),
     //     Image.asset('assets/images/o1.jpg',),
          Spacer(flex: 1,),
          Text("Welcome to Net banking App",
            style: Theme.of(context).textTheme.headline5.copyWith(
              fontWeight: FontWeight.bold,
            ),
          textAlign: TextAlign.center,
          ),
          Spacer(flex: 1,),
        Text("You can check balance and transfer money between accounts here.",
        textAlign: TextAlign.center,),
          Spacer(flex: 1,),
        Card(
        child:InkWell(
        onTap: () => Navigator.push(
    context, MaterialPageRoute(builder: (context) =>AddUser())),
        child: Container(
          width: 150,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 20.0),
              blurRadius: 30.0,
              color: Colors.black12,
            )
          ],
          color: Colors.white, borderRadius: BorderRadius.circular(22.0)
          ),
          child: Row(
    children: <Widget>[
      Container(
        height: 50.0,
            width: 150.0,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            child: Text("Add Customers", ),)
       /*     decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.0),
                topLeft: Radius.circular(22.0),
                bottomRight: Radius.circular(200.0)
              )
            ),
          ),
      Icon(
        Icons.add_box,
        size: 30.0,
      ) */
    ]
          ),
        ),
      ),
      ),
          Spacer(flex: 1,),
          Card(
            child:InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>BankList())),
              child: Container(
                width: 150,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12,
                  )
                ],
                    color: Colors.white, borderRadius: BorderRadius.circular(22.0)
                ),
                child: Row(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 150.0,
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                        child: Text("Balance Check"),

                      ),
                    ]
                ),
              ),
            ),
          ),
          Spacer(flex: 1,),
          Card(
            child:InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>TransList())),
              child: Container(
                width: 150,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12,
                  )
                ],
                    color: Colors.white, borderRadius: BorderRadius.circular(22.0)
                ),
                child: Row(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 150.0,
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                        child: Text("Transfer Money"),)

                    ]
                ),
              ),
            ),
          ),
          Spacer(flex: 2,),
        ]),),
    );
  }
}