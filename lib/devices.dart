import 'package:flutter/material.dart';
import 'iot_device.dart';
import 'iot_panel.dart';

void main() => runApp(
  const MaterialApp(
    home: DevicesPage(),
  ),
);

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  _DevicesPageState createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  List<IoTDevice> devices = [
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
              const SizedBox(
                height: 12,
                width: 95,
              ),
              const Text(
                'Devices',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color : Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  // configure add device path
                },
                icon: Container(
                  width: 28, height: 28,
                  margin: const EdgeInsets.fromLTRB(50,0,0,0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF20DBB0),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1.75,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 23,
                    color: Colors.white,
                  ),
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
              const SizedBox(height: 8), // SizedBox before the first panel
              ...devices.map((device) { // spread operator to unpack the list
                return Column(
                  children: [
                    IoTPanel(
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
