import 'package:flutter/material.dart';
import 'package:blue_thermal_printer_plus/blue_thermal_printer_plus.dart';

void main() {
  runApp(const FinalThermalTest());
}

class FinalThermalTest extends StatefulWidget {
  const FinalThermalTest({super.key});

  @override
  State<FinalThermalTest> createState() => _FinalThermalTestState();
}

class _FinalThermalTestState extends State<FinalThermalTest> {
  final BlueThermalPrinterPlus bluetooth = BlueThermalPrinterPlus();
  List<BluetoothDevice> _devices = [];
  BluetoothDevice? _device;
  bool _connected = false;

  @override
  void initState() {
    super.initState();
    initBluetooth();
  }

  Future<void> initBluetooth() async {
    try {
      List<BluetoothDevice> devices = await bluetooth.getBondedDevices();
      setState(() {
        _devices = devices;
      });
      print('Found ${devices.length} Bluetooth devices');
    } catch (e) {
      print('Error getting devices: $e');
    }
  }

  Future<void> _connect() async {
    if (_device != null) {
      try {
        await bluetooth.connect(_device!);
        setState(() => _connected = true);
        print('Connected to ${_device!.name}');
      } catch (e) {
        print('Connection error: $e');
        setState(() => _connected = false);
      }
    }
  }

  Future<void> _disconnect() async {
    try {
      await bluetooth.disconnect();
      setState(() => _connected = false);
      print('Disconnected');
    } catch (e) {
      print('Disconnect error: $e');
    }
  }

  Future<void> _printTest() async {
    if (!_connected) return;

    try {
      print('Starting print test...');
      
      // Method 1: Try using the sample code format from the library
      List<PrintItem> receipt = [
        PrintItem(type: PrintItemType.newLine),
        PrintItem.text("ABU JENNA TEST", size: 1, align: 1),
        PrintItem(type: PrintItemType.newLine),
        PrintItem.text("اختبار الطباعة", align: 1),
        PrintItem(type: PrintItemType.newLine),
        PrintItem.text("Date: ${DateTime.now().toString().substring(0, 19)}", align: 1),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
      ];

      print('Created receipt with ${receipt.length} items');
      
      // Try to print using the print method
      await bluetooth.print(items: receipt, protocol: PrinterProtocol.escPos);
      
      print('Print command sent successfully');
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تم إرسال الأمر إلى الطابعة بنجاح'),
          backgroundColor: Colors.green,
        ),
      );
      
    } catch (e) {
      print('Print error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('خطأ في الطباعة: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _printQRTest() async {
    if (!_connected) return;

    try {
      print('Starting QR print test...');
      
      List<PrintItem> receipt = [
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.qrCode, text: "https://flutter.dev"),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
        PrintItem(type: PrintItemType.newLine),
      ];

      await bluetooth.print(items: receipt, protocol: PrinterProtocol.escPos);
      
      print('QR Print command sent successfully');
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تم إرسال كود QR للطابعة'),
          backgroundColor: Colors.green,
        ),
      );
      
    } catch (e) {
      print('QR Print error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('خطأ في طباعة QR: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Final Thermal Test'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Device selection
              DropdownButtonFormField<BluetoothDevice>(
                value: _device,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'اختر الطابعة',
                ),
                items: _devices.map((device) {
                  return DropdownMenuItem(
                    value: device,
                    child: Text(device.name ?? 'Unknown'),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() => _device = value);
                },
              ),
              
              const SizedBox(height: 20),
              
              // Connection controls
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _connected ? _disconnect : _connect,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _connected ? Colors.red : Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(_connected ? 'قطع الاتصال' : 'اتصال'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _connected ? _printTest : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('طباعة اختبار'),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 10),
              
              // QR Print button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _connected ? _printQRTest : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('طباعة كود QR'),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Status
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: _connected ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1),
                  border: Border.all(
                    color: _connected ? Colors.green : Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      _connected ? Icons.bluetooth_connected : Icons.bluetooth_disabled,
                      color: _connected ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      _connected ? 'متصل بالطابعة' : 'غير متصل',
                      style: TextStyle(
                        color: _connected ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
              
              // Instructions
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تعليمات:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text('1. اختر الطابعة من القائمة'),
                      Text('2. اضغط على "اتصال"'),
                      Text('3. اضغط على "طباعة اختبار"'),
                      Text('4. انتظر حتى تكتمل الطباعة'),
                      SizedBox(height: 10),
                      Text(
                        'ملاحظة: يستخدم هذا التطبيق نفس الطريقة الموجودة في main.dart',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
