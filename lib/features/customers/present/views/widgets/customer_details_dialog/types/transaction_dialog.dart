// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import '../../../../../domain/entities/customer_entity.dart';

// class TransactionDialog {
//   static void show({
//     required BuildContext context,
//     required CustomerEntity customer,
//   }) {
//     final TextEditingController amountController = TextEditingController();
//     final TextEditingController notesController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('إضافة معاملة'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text('الاسم: ${customer.name ?? ''}'),
//               SizedBox(height: 16),
//               TextField(
//                 controller: amountController,
//                 keyboardType: TextInputType.number,
//                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                 decoration: InputDecoration(
//                   labelText: 'المبلغ',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 16),
//               TextField(
//                 controller: notesController,
//                 decoration: InputDecoration(
//                   labelText: 'ملاحظات',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text('إلغاء'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('حفظ'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
