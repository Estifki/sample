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
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white54,
                          size: 24,
                        ),
                      ),
                    ]),
                //
                //
                //
                SizedBox(height: screenSize.height * 0.05),
                const Text("Available limit",
                    style: TextStyle(fontSize: 15, color: Colors.white70)),
                SizedBox(height: screenSize.height * 0.015),
                const Text("20,000.00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
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
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: const Color(0xff5d35d6),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey.shade100,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 27), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sync_alt_sharp, size: 27), label: "Transaction"),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_outline_sharp, size: 27), label: "Help"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 27), label: "Profile"),
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
                PaymentWidgets(title: "Pay", icon: Icons.clean_hands_rounded),
                PaymentWidgets(
                    title: "Scan", icon: Icons.qr_code_scanner_rounded),
              ]),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PaymentWidgets(
                    title: "Withdraw", icon: Icons.clean_hands_rounded),
                PaymentWidgets(
                    title: "Pay Bills", icon: Icons.spatial_audio_off_rounded),
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
      height: 80,
      width: screenSize.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
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
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Center(
                    child: Image.asset("assets/ethio_tele.jpg", height: 20))),
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
  final IconData icon;
  const PaymentWidgets({super.key, required this.title, required this.icon});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 65,
      width: screenSize.width * 0.41,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(255, 224, 218, 235),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: screenSize.width * 0.05),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff5d35d6)),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
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
