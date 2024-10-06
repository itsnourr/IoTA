import 'package:flutter/material.dart';
import 'slideup_modal.dart';
import 'iot_device.dart';

class IoTAddPanel extends StatefulWidget{

  final IoTDevice? device;
  final ValueChanged<bool>? onToggle;

  const IoTAddPanel({super.key, this.device, this.onToggle});

  @override
  State<IoTAddPanel> createState() => _IoTAddPanelState();
}

class _IoTAddPanelState extends State<IoTAddPanel> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Expanded(
          flex: 7,
          child: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.fromLTRB(20,0,0,0),
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

            margin: const EdgeInsets.fromLTRB(0,0,20,0),
            child: IconButton(
              onPressed: () {
                // configuration of the slide up small window
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.white,
                  elevation: 10,
                  barrierColor: Colors.black.withOpacity(0.5),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (BuildContext context){
                    return const SlideUpModal();
                  },
                );
                /*showModalBottomSheet(
                  context: context,
                  builder: (context) => SlideUpModal(),
                ),*/
              },
              icon: Container(
                width: 28, height: 28,

                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF20DBB0),
                    width: 1.75,
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  size: 23,
                  color: Color(0xFF20DBB0),
                ),
              ),
            ),
          ),
        ), // Add Button
      ],
    ); // Speaker Column;
  }
}