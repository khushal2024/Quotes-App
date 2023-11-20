import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class AlarmApp extends StatefulWidget {
  const AlarmApp({super.key});

  @override
  State<AlarmApp> createState() => _AlarmAppState();
}

class _AlarmAppState extends State<AlarmApp> {
  //bool isChanged = false;

  List<bool> isChanged = [false, false, false, false];
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(95, 34, 32, 32),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(95, 31, 30, 30),
        title: const Text('Alarm App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 300,
              height: 300,
              child: AnalogClock(
                datetime: DateTime.now(),
                isLive: true,
                showNumbers: true,
                showTicks: true,
                tickColor: Colors.yellow,
                showAllNumbers: true,
                minuteHandColor: Colors.red,
                hourHandColor: Colors.red,
                numberColor: Colors.yellow,
                digitalClockColor: Colors.yellow,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: 380,
            height: 350,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final selectedTime = await showTimePicker(
                                context: context, initialTime: _selectedTime!);
                            if (selectedTime != null) {
                              setState(() {
                                _selectedTime = selectedTime;
                              });
                            }
                          },
                          child: const Text(
                            '00:00',
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 30),
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                          child: Icon(
                            Icons.alarm,
                            color: Colors.yellow,
                          ),
                        ),
                        Transform.scale(
                          scale: 1.5,
                          child: SizedBox(
                            width: 140,
                            child: Switch(
                              activeColor: Colors.yellow,
                              activeTrackColor:
                                  const Color.fromARGB(255, 83, 77, 77),
                              inactiveThumbColor: Colors.red,
                              inactiveTrackColor:
                                  const Color.fromARGB(255, 83, 77, 77),
                              value: isChanged[index],
                              onChanged: (value) {
                                setState(() {
                                  isChanged[index] = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                );
              },
              itemCount: 4,
            ),
          )
        ],
      ),
    );
    ;
  }
}
