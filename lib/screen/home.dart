import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          // constraints: BoxConstraints(
          //   maxHeight: screenSize.height,
          //   maxWidth: screenSize.width,
          // ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.indigo, Colors.blue.shade400]),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    padding:
                        const EdgeInsets.only(top: 15, right: 25, left: 25),
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
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
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
                                  shape: BoxShape.circle,
                                  color: Colors.white24),
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
                          style:
                              TextStyle(fontSize: 15, color: Colors.white70)),
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
                Expanded(
                  child: Container(
                    width: screenSize.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40.0))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 25, right: 25, left: 25),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  PaymentWidgets(
                                      title: "Pay",
                                      icon: Icons.clean_hands_rounded),
                                  PaymentWidgets(
                                      title: "Scan",
                                      icon: Icons.qr_code_scanner_rounded),
                                ]),
                            const SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  PaymentWidgets(
                                      title: "Pay",
                                      icon: Icons.clean_hands_rounded),
                                  PaymentWidgets(
                                      title: "Scan",
                                      icon: Icons.qr_code_scanner_rounded),
                                ])
                          ]),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

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
        color: Colors.indigo.shade100,
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
                  shape: BoxShape.circle, color: Colors.indigo),
              child: Icon(icon, color: Colors.white54, size: 22),
            ),
            const SizedBox(width: 10),
            Text(title,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ]),
    );
  }
}
