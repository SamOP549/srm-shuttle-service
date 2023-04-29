import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:live_location/map.dart';
import 'package:live_location/speed.dart';

import 'history.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Buttons(),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SRM SHUTTLE SERVICE"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.directions_bus,
                size: 200,
                color: Colors.grey[700],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Map()),
                  );
                },
                label: const Text(
                  "Live Tracking",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                icon: const Icon(
                  Icons.location_on,
                  size: 30,
                  color: Colors.black87,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: const StadiumBorder(),
                    fixedSize: const Size(250, 50),
                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    elevation: 15,
                    side: const BorderSide(color: Colors.black87, width: 2)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const History()),
                  );
                },
                label: const Text(
                  "History",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                icon: const Icon(
                  Icons.history,
                  size: 30,
                  color: Colors.black87,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: const StadiumBorder(),
                    fixedSize: const Size(250, 50),
                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    elevation: 15,
                    side: const BorderSide(color: Colors.black87, width: 2)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Speed()),
                  );
                },
                label: const Text(
                  "Speed",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                icon: const Icon(
                  Icons.speed,
                  size: 30,
                  color: Colors.black87,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: const StadiumBorder(),
                    fixedSize: const Size(250, 50),
                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    elevation: 15,
                    side: const BorderSide(color: Colors.black87, width: 2)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Crowd()),
                  );
                },
                label: const Text(
                  "Crowd Management",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                icon: const Icon(
                  Icons.groups_3_rounded,
                  size: 30,
                  color: Colors.black87,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: const StadiumBorder(),
                    fixedSize: const Size(250, 50),
                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    elevation: 15,
                    side: const BorderSide(
                      color: Colors.black87,
                      width: 2,
                    )),
              ),
            ],
          ),
        ));
  }
}

class Crowd extends StatefulWidget {
  const Crowd({super.key});

  @override
  State<Crowd> createState() => _CrowdState();
}

class _CrowdState extends State<Crowd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.groups_3_rounded,
              size: 200,
              color: Colors.grey[700],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Low Crowd',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
