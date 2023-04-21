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
                        // Container(
                        //   height: 70,
                        //   width: screenSize.width * 0.4,
                        //   color: Colors.indigo.shade100,
                        // ),
                        Container(
                          height: 70,
                          width: screenSize.width * 0.42,
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
                                    shape: BoxShape.circle,
                                    color: Colors.indigo),
                                child: const Icon(Icons.blinds_closed_sharp,
                                    color: Colors.white54, size: 22),
                              ),
                              SizedBox(width: 10),
                              const Text("Pay",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
