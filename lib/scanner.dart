import 'package:flutter/material.dart';
import 'iot_device.dart';
import 'iot_add_panel.dart';

void main() => runApp(
  const MaterialApp(
    home: ScannerPage(),
  ),
);

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  List<IoTDevice> devices = [
    IoTDevice(
      name: 'JB',
      type: 'Speaker',
      room: 'Backyard',
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker,
      properties: null,
    ),
    // Demo Devices
    IoTDevice(
      name: "JB67a",
      type: "Speaker",
      room: "Bedroom",
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker_outlined,
      properties: null,
    ),
    IoTDevice(
      name: "JB67a",
      type: "Speaker",
      room: "Bedroom",
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker_outlined,
      properties: null,
    ),
    IoTDevice(
      name: "JB67a",
      type: "Speaker",
      room: "Bedroom",
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker_outlined,
      properties: null,
    ),
    IoTDevice(
      name: "JB67a",
      type: "Speaker",
      room: "Bedroom",
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker_outlined,
      properties: null,
    ),
    IoTDevice(
      name: "JB67a",
      type: "Speaker",
      room: "Bedroom",
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker_outlined,
      properties: null,
    ),
    IoTDevice(
      name: "JB67a",
      type: "Speaker",
      room: "Bedroom",
      state: true,
      isSettable: false,
      isInterfaceable: false,
      icon: Icons.speaker_outlined,
      properties: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  // configure back to devices.dart path
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 23,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width:40),
              const Text(
                'Add Devices',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color : Colors.white,
                ),
              ),
              const SizedBox(width:30),
              IconButton(
                onPressed: () {
                  // configure add device path
                },
                icon: const Icon(
                  Icons.refresh,
                  size: 23,
                  color: Colors.white,
                ),
              ),
            ]
        ),
        backgroundColor: const Color(0xFF20DBB0),

      ),
      body: Scrollbar(
        thickness: 8.0,
        radius: const Radius.circular(20),
        thumbVisibility: true,
        trackVisibility: false,
        interactive: true,
        child: SingleChildScrollView(
          child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 140, height: 140,
                    margin: const EdgeInsets.fromLTRB(0,10,0,0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF20DBB0),
                      border: Border.all(
                        color: const Color(0xFF23CAA4),
                        width: 10,
                      ),
                    ),
                    child: const Icon(
                      Icons.router,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ), // Scan button
                const SizedBox(height: 5), //
                const Text(
                  'Press to scan for devices',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color : Color(0xFF1ED0A7),
                  ),
                ),
                const SizedBox(height: 5),
                // panel start here
                ...devices.map((device) { // spread operator to unpack the list
                  return Column(
                    children: [
                      IoTAddPanel(
                        device: device,
                        onToggle: (newState) {
                          setState(() {
                            device.state = newState;
                            // Optional: Save to the database later
                            // saveStateToDatabase(device.id, newState);
                          });
                        },
                      ),
                    ],
                  );
                }),
                const SizedBox(height: 8),
              ]
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF1ED0A7),
        height: 73,
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    icon: const Icon(
                      Icons.loop,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                  child: Text(
                    'Modes',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ), // Modes Icon

            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    icon: const Icon(
                      Icons.router,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                  child: Text(
                    'Devices',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ), // Dashboard Icon

            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    icon: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ), // Devices Icon

            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    icon: const Icon(
                      Icons.insert_chart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                  child: Text(
                    'Stats',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ), // Stats Icon

            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    icon: const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ), // Settings Icon
          ],
        ),
      ),
    );
  }
}
