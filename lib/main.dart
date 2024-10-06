import 'package:flutter/material.dart';
import 'iot_device.dart';
import 'iot_panel.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
  )
);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Here are the three quick access iot panels data mock devices
  final IoTDevice firstIoT = IoTDevice(
      name: "JB67a", type: "Speaker", room: "Bedroom", state: true, isSettable: false,
      isInterfaceable: false, icon: Icons.speaker_outlined, properties: null
  );

  final IoTDevice secondIoT = IoTDevice(
      name: "CM03", type: "Camera", room: "Backyard", state: false, isSettable: false,
      isInterfaceable: true, icon: Icons.videocam, properties: null
  );

  final IoTDevice thirdIoT = IoTDevice(
      name: "LG12", type: "Television", room: "Bedroom", state: true, isSettable: true,
      isInterfaceable: false, icon: Icons.tv, properties: null
  );

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(
              'IoT Assistant',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color : Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF20DBB0),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          const SizedBox(height: 10),

          const Text(
              '    Quick Access',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF1BBD98),
              ),
          ), // Quick Access Heading

          const SizedBox(height: 4),

          IoTPanel(
              device: firstIoT,
              onToggle: (newState) {
                // Optional: This is where you'd save to the database later
                // saveStateToDatabase(myDevice.id, newState);
              },
          ), // Speaker Column

          const SizedBox(height: 0),

          IoTPanel(
            device: secondIoT,
            onToggle: (newState) {
            // Optional: This is where you'd save to the database later
            // saveStateToDatabase(myDevice.id, newState);
            },
          ), // TV Column

          const SizedBox(height: 0),

          IoTPanel(
            device: thirdIoT,
            onToggle: (newState) {
            // Optional: This is where you'd save to the database later
            // saveStateToDatabase(myDevice.id, newState);
            },
          ), // TV Column

          const SizedBox(height: 5),

          const Text(
              '    IoT Devices',
            style: TextStyle(
            fontSize: 20,
            color: Color(0xFF1BBD98),
            ),
          ), // IoT Devices Heading

          const SizedBox(height: 7),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1BBD98),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.videocam_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ), // device #1
                      const SizedBox(height: 2),
                      const Text(
                        'Cameras',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #1

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1ED0A7),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.light,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ), // device #2
                      const SizedBox(height: 2),
                      const Text(
                        'Lighting',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #2

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF21E5B8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.tv,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ), // device #3
                      const SizedBox(height: 2),
                      const Text(
                        'Television',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #3

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF24FCCA),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.local_fire_department_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ), // device #4
                      const SizedBox(height: 2),
                      const Text(
                        'Heaters',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #4

                ],
              ), // First IoT devices buttons

              const SizedBox(height: 7),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1BBD98),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.ac_unit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ), // device #1
                      const SizedBox(height: 2),
                      const Text(
                        'Fridges',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #5

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1ED0A7),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.speaker_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ), // device #2
                      const SizedBox(height: 2),
                      const Text(
                        'Speakers',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #6

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF21E5B8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.air_sharp,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ), // device #3
                      const SizedBox(height: 2),
                      const Text(
                        'ACs/Fans',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #7

                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF24FCCA),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ), // device #4
                      const SizedBox(height: 2),
                      const Text(
                        'See More',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ), // device #8

                ],
              ), // Second IoT devices buttons
            ],
          ), // IoT devices buttons

          const SizedBox(height: 8),

          const Text(
            '    Automations',
            style: TextStyle(
            fontSize: 20,
            color: Color(0xFF1BBD98),
            ),
          ), // Automations Heading

          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [

              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF1BBD98),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.door_front_door_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ), // mode #1
                  const SizedBox(height: 2),
                  const Text(
                    'Away Mode',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ), // automate #1

              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF1ED0A7),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.people_alt_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ), // mode #2
                  const SizedBox(height: 2),
                  const Text(
                    'Guest Mode',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ), // automate #2

              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF21E5B8),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_book_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ), // mode #3
                  const SizedBox(height: 2),
                  const Text(
                    'Read Mode',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ), // automate #3

              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF24FCCA),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ), // mode #4
                  const SizedBox(height: 2),
                  const Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ), // automate #4
            ],
          ), // Automations Buttons

        ],
      ), // Body
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
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    icon: const Icon(
                      Icons.loop,
                      color: Colors.white,
                      size: 30,
                    ),

                  ),
                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,7),
                  child: Text(
                    'Modes',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    )
                  ),
                ),
              ],
            ), // Modes Icon

            Column(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    padding: const EdgeInsets.fromLTRB(0,4,0,0),
                    icon: const Icon(
                      Icons.router_outlined,
                      color: Colors.white,
                      size: 37,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,7),
                  child: Text(
                    'Devices',
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
                    padding: const EdgeInsets.fromLTRB(0,2,0,0),
                    icon: const Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,7),
                  child: Text(
                    'Dashboard',
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
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    icon: const Icon(
                      Icons.insert_chart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,7),
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
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    icon: const Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,7),
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