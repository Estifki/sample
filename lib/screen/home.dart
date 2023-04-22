import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        // constraints: BoxConstraints(
        //     maxHeight: screenSize.height, maxWidth: screenSize.width),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.indigo, Colors.blue.shade400]),
        ),
        child: ListView(children: [
          //
          //
          //
          Container(
            height: screenSize.height * 0.35,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.indigo, Colors.blue.shade400]),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
              child: Column(children: [
                //
                //
                //
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                            image: const DecorationImage(
                                image: AssetImage("assets/whit2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hello, selam",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white70),
                          ),
                          Text(
                            "Welcome Back!",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white24),
                          child: Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset("assets/Bell.png"),
                            ),
                            Positioned(
                                top: 8,
                                left: 8,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                ))
                          ])),
                    ]),
                //
                //
                //
                SizedBox(height: screenSize.height * 0.045),
                const Text("Available limit",
                    style: TextStyle(fontSize: 15, color: Colors.white70)),
                SizedBox(height: screenSize.height * 0.015),
                const Text("20,000.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: screenSize.height * 0.03),

                Container(
                  height: 40,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white)),
                  child: Stack(alignment: Alignment.center, children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("10,000",
                              style: TextStyle(color: Colors.white70)),
                          Container(
                            height: 11,
                            width: screenSize.width * 0.5,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(25)),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: screenSize.width * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                            ),
                          ),
                          const Text("30,000",
                              style: TextStyle(color: Colors.white70)),
                        ]),
                    Positioned(
                        left: screenSize.width * 0.35,
                        child: Image.asset("assets/icon_one_circle.png",
                            height: 25))
                  ]),
                ),
              ]),
            ),
          ),
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          Container(
            width: screenSize.width,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(40.0))),
            child: const Padding(
              padding: EdgeInsets.only(top: 25, right: 25, left: 25),
              child: BottomWidget(),
            ),
          )
        ]),
      ),
      //
      //
      //
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        selectedItemColor: const Color(0xff5d35d6),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey.shade100,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/Home_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Transction_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Help_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Profile_Icon.png"), label: ""),
        ],
      ),
    );
  }
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PaymentWidgets(title: "Pay", image: "assets/Pay_icon.png"),
                PaymentWidgets(title: "Scan", image: "assets/Scan_Icon.png"),
              ]),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PaymentWidgets(
                    title: "Withdraw", image: "assets/Withdraw_icon.png"),
                PaymentWidgets(
                    title: "Pay Bills", image: "assets/pay_bills_icon.png"),
              ]),

          const SizedBox(height: 40),
          //
          //Header
          //
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Transaction History",
                  style: TextStyle(
                      color: Color(0xff5d35d6), fontWeight: FontWeight.w600),
                ),
                Text("See all"),
              ]),
          const SizedBox(height: 10),
          //
          //
          //
          const TransactionHistoryWidget(),
          const SizedBox(height: 10),
          const TransactionHistoryWidget(),

          const SizedBox(height: 10),
          const TransactionHistoryWidget(),
          const SizedBox(height: 10)
        ]);
  }
}
//
//
//
//
//
//
//
//
//
//
//
//

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 75,
      width: screenSize.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 15),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.07),
                ),
                child: Center(
                    child: Image.asset("assets/ethio_tele-removebg-preview.png",
                        height: 20))),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Ethio telecom bill",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: 3),
                Text(
                  "Utility Bill",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff5d35d6),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 3),
                Text(
                  "Date 20/12/23",
                  style: TextStyle(fontSize: 13, color: Colors.black45),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "5600.00",
                    style: TextStyle(
                        color: Color(0xff5d35d6),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    "ETB",
                    style: TextStyle(
                        color: Color(0xff5d35d6),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
class PaymentWidgets extends StatelessWidget {
  final String title;
  final String image;
  const PaymentWidgets({super.key, required this.title, required this.image});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 65,
      width: screenSize.width * 0.41,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color.fromARGB(255, 224, 218, 235),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: screenSize.width * 0.05),
            Image.asset(image, height: 40),
            const SizedBox(width: 10),
            Text(title,
                style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff5d35d6),
                    fontWeight: FontWeight.bold)),
          ]),
    );
  }
}
