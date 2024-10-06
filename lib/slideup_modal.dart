import 'package:flutter/material.dart';
import 'iot_device.dart';

class SlideUpModal extends StatefulWidget{

  final IoTDevice? device;
  final ValueChanged<bool>? onToggle;

  const SlideUpModal({super.key, this.device, this.onToggle});

  @override
  State<SlideUpModal> createState() => _SlideUpModalState();
}

class _SlideUpModalState extends State<SlideUpModal> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Rename Selected Device',
                style: TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 0.5,
                  color : Color(0xFF1ED0A7),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  size: 15,
                  color: Color(0xFF1ED0A7),
                ),
              ),
            ],
          ), // Text and Exit button
          const Text(
            'Let the name be meaningful for ease of access',
            style: TextStyle(
              fontSize: 10.0,
              letterSpacing: 0.5,
              color : Color(0xFF1ED0A7),
            ),
          ), // Meaningful remark
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.fromLTRB(10,0,10,0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter your text',
                  hintText: 'Type something...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.text_fields),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                obscureText: false,
                maxLength: 20,
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}