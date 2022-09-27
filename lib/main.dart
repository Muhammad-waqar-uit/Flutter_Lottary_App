import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int wining = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottary App'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Lottary Winning number is 6',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        const SizedBox(height: 16,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color:wining==6? Colors.teal:Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: wining==6?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.done_all,
                      color: Colors.green,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                        child: Text(
                          'Congrate You won The lottary Your Winning No is ${wining}',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                        ))
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                        child: Text(
                      'Better Luck Next Time and your number is ${wining}',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton:  FloatingActionButton(
          onPressed: (){
            wining = random.nextInt(20);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
