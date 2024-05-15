import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? from;
  int? to;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter a temperature"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "From",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        DropdownButton(
                          hint: const Text("Select type"),
                          value: to != null ? to == 0 ? from = 1 : from = 0 : from,
                          items: const [
                            DropdownMenuItem(
                              value: 0,
                              child: Text("Celcius"),
                            ),
                            DropdownMenuItem(
                              value: 1,
                              child: Text("Fahrenheit"),
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              from = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "To",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        DropdownButton(
                          hint: const Text("Select type"),
                          value: from != null ? from == 0 ? to = 1 : to = 0 : to,
                          items: const [
                            DropdownMenuItem(
                              value: 0,
                              child: Text("Celcius"),
                            ),
                            DropdownMenuItem(
                              value: 1,
                              child: Text("Fahrenheit"),
                            )
                          ],
                          onChanged: (value) {
                            setState(() {
                              to = value;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                    onPressed: () {},
                    child: const Text(
                      "Convert",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
