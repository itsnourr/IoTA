import 'package:flutter/material.dart';
import 'iot_device.dart';

class IoTPanel extends StatefulWidget{

  final IoTDevice? device;
  final ValueChanged<bool>? onToggle;

  const IoTPanel({super.key, this.device, this.onToggle});

  @override
  State<IoTPanel> createState() => _IoTPanelState();
}

class _IoTPanelState extends State<IoTPanel> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Expanded(
          flex: 7,
          child: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.fromLTRB(25,0,0,0),
            decoration: BoxDecoration(
              color: const Color(0xFF20DBB0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              height: 35,
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: Row(
                      children: <Widget> [
                        IconButton(
                          icon: Icon(
                            widget.device?.icon ?? Icons.device_unknown,
                            size: 20,
                          ),
                          color: Colors.white,
                          onPressed: (){},

                        ), // Device Icon
                        Expanded(
                          child: Text(
                            '${widget.device?.type} - ${widget.device?.room} - ${widget.device?.name}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 15,
                    ),
                    color: Colors.white,
                    onPressed: (){},
                  ), // Speaker Device Arrow Flexbox
                ],
              ),
            ),
          ), // device display
        ), // Device Container
        Expanded(
          flex: 2,
          child: Container(

            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.fromLTRB(15,0,30,0),
            child: Transform.scale(
              scale: 0.75,
               child: Switch(
                 value: widget.device?.state ?? false,
                 onChanged: (newValue) {
                   setState(() {
                     widget.device?.state = newValue;
                   });

                   // Trigger the callback to notify the parent widget or controller
                   if (widget.onToggle != null) {
                     widget.onToggle!(newValue);
                   }
                 },
                 activeTrackColor: const Color(0xFF21E5B8), // Track color when ON
                 inactiveThumbColor: const Color(0xFF1BBD98), // Circle color when OFF
                 inactiveTrackColor: const Color(0x2B1BBD98), // Track color when OFF
               ),
            ),
          ),
        ), // Toggle Switch
      ],
    ); // Speaker Column;
  }
}