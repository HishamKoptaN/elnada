# معايير البرمجة للمشروع

## القاعدة الذهبية: 80 سطر كحد أقصى

### 📏 **قاعدة الطول القصوى**
- **الحد الأقصى لعدد الأسطر في الملف الواحد**: 80 سطر
- **الحد الأقصى لطول السطر الواحد**: 80 حرف
- **إذا تجاوز الملف 80 سطر → يجب تقسيمه**

---

## 🎯 **استراتيجية التقسيم**

### 1. **Divide and Conquer**
```dart
// ❌ سيء - ملف واحد طويل
class LongPage extends StatelessWidget {
  // 150+ سطر من الكود
}

// ✅ جيد - تقسيم إلى مكونات صغيرة
class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(),
        ContentWidget(),
        FooterWidget(),
      ],
    );
  }
}
```

### 2. **Single Responsibility Principle**
كل ملف له مسؤولية واحدة فقط:
- **UI Widget** → واجهة المستخدم فقط
- **Business Logic** → منطق العمل فقط  
- **Data Layer** → التعامل مع البيانات فقط
- **Utilities** → وظائف مساعدة فقط

---

## 📁 **هيكل الملفات**

### عندما يتجاوز الملف 80 سطر:
```
lib/
├── features/
│   └── customers/
│       └── present/
│           ├── views/
│           │   └── customer_page.dart (80 سطر كحد أقصى)
│           └── widgets/
│               ├── header_widget.dart
│               ├── content_widget.dart
│               └── footer_widget.dart
```

---

## 🧩 **قاعدة جديدة: تجميع الواجهات المعقدة**

### 📋 **متى تستخدم القاعدة؟**
عندما تكون لديك **واجهة معقدة** تتكون من:
- واجهة رئيسية + واجهات فرعية متعددة
- الكود الإجمالي يتجاوز 250 سطر
- الواجهات الفرعية لها مسؤوليات محددة

### 🎯 **الحل: التجميع التلقائي**

```dart
// ❌ سيء - ملفات متفرقة بدون تنظيم
lib/
├── main_dialog.dart (150 سطر)
├── customer_type_dialog.dart (60 سطر)
├── payment_dialog.dart (40 سطر)

// ✅ جيد - تجميع تلقائي في مجلد واحد
lib/
└── dialogs/
    ├── main_dialog/
    │   ├── main_dialog.dart (80 سطر)
    │   ├── widgets/
    │   │   ├── customer_type_selector.dart
    │   │   ├── payment_form.dart
    │   │   └── confirmation_button.dart
    │   └── main_dialog_controller.dart
    ├── customer_type_dialog/
    │   ├── customer_type_dialog.dart (60 سطر)
    │   └── widgets/
    │       └── type_selection_widget.dart
    └── payment_dialog/
        ├── payment_dialog.dart (40 سطر)
        └── widgets/
            └── payment_amount_input.dart
```

### 📝 **قواعد التجميع:**

1. **إنشاء مجلد باسم الواجهة الرئيسية**
2. **وضع الملف الرئيسي داخل المجلد**
3. **إنشاء مجلد `widgets/` فرعي**
4. **نقل كل المكونات الصغيرة إلى `widgets/`**
5. **كل ملف لا يتجاوز 80 سطر**

### 🔧 **أدوات المساعدة**

### 1. **تحليل الكود**
```bash
flutter analyze
```

### 2. **تنسيق الكود**
```bash
dart format .
```

### 3. **فحص طول الملفات**
```bash
find lib -name "*.dart" -exec wc -l {} \; | sort -n
```

---

## 📝 **قواعد الكتابة**

### 1. **أسماء الملفات**
- `snake_case` للملفات: `customer_page.dart`
- أسماء وصفية: `customer_statement_page.dart`

### 2. **أسماء الكلاسات**
- `PascalCase` للكلاسات: `CustomerPage`
- أسماء وصفية: `CustomerStatementPage`

### 3. **المتغيرات والدوال**
- `camelCase` للمتغيرات: `customerName`
- أسماء وصفية: `customerStatementData`

---

## 🚀 **متى تقسيم الملف؟**

### علامات التحذير:
- 🔴 الملف يتجاوز 80 سطر
- 🔴 الدالة تتجاوز 20 سطر
- 🔴 الكلاس لديها أكثر من مسؤولية
- 🔴 الكود معقد وصعب القراءة
- 🟡 واجهة معقدة (>250 سطر) تحتاج إلى تجميع

### الحلول:
1. **استخراج الـ Widgets** → ملفات منفصلة
2. **استخراج الـ Functions** → ملف utilities
3. **استخراج الـ Constants** → ملف constants
4. **استخراج الـ Models** → ملف models
5. **تجميع الواجهات المعقدة** → مجلد واحد مع مجلد widgets فرعي

---

## ✅ **مثال عملي: تجميع الواجهات المعقدة**

### قبل التقسيم (250+ سطر):
```dart
// main_dialog.dart
class MainDialog extends StatefulWidget {
  @override
  _MainDialogState createState() => _MainDialogState();
}

class _MainDialogState extends State<MainDialog> {
  // 150+ سطر من الكود المختلط
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('اختر العميل'),
      content: Column(
        children: [
          // Customer selection code (50 سطر)
          // Payment form code (80 سطر)
          // Confirmation buttons (20 سطر)
        ],
      ),
    );
  }
}

// customer_type_dialog.dart
class CustomerTypeDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      // 60 سطر من الكود
    );
  }
}

// payment_dialog.dart
class PaymentDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      // 40 سطر من الكود
    );
  }
}
```

### بعد التجميع (كل ملف < 80 سطر):
```dart
// main_dialog.dart (80 سطر)
class MainDialog extends StatefulWidget {
  @override
  _MainDialogState createState() => _MainDialogState();
}

class _MainDialogState extends State<MainDialog> {
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('اختر العميل'),
      content: Column(
        children: [
          CustomerTypeSelector(),
          PaymentForm(),
          ConfirmationButton(),
        ],
      ),
    );
  }
}

// main_dialog/widgets/customer_type_selector.dart (25 سطر)
class CustomerTypeSelector extends StatelessWidget {
  // كود اختيار العميل فقط
}

// main_dialog/widgets/payment_form.dart (35 سطر)
class PaymentForm extends StatelessWidget {
  // كود نموذج الدفع فقط
}

// main_dialog/widgets/confirmation_button.dart (20 سطر)
class ConfirmationButton extends StatelessWidget {
  // كود زر التأكيد فقط
}

// customer_type_dialog.dart (60 سطر)
class CustomerTypeDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: TypeSelectionWidget(),
    );
  }
}

// payment_dialog.dart (40 سطر)
class PaymentDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: PaymentAmountInput(),
    );
  }
}
```

---

## 🎯 **الهدف النهائي**

- **كل ملف**: 80 سطر كحد أقصى
- **كل دالة**: 20 سطر كحد أقصى
- **كل كلاس**: مسؤولية واحدة
- **كود نظيف**: سهل القراءة والصيانة
- **واجهات معقدة**: تجميع تلقائي في مجلدات منظمة

> 💡 **تذكر**: 
> - **الواجهة البسيطة**: ملف واحد ≤ 80 سطر
> - **الواجهة المعقدة**: مجلد رئيسي + مجلد widgets فرعي
> - **كل مكون**: مسؤولية واحدة واضحة

> 🎯 **الكود الجيد ليس كوداً معقداً، بل كوداً بسيطاً ومنظماً!**
