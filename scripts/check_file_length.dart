#!/usr/bin/env dart

import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  print('🔍 فحص طول الملفات في المشروع...\n');
  
  final libDir = Directory('lib');
  if (!libDir.existsSync()) {
    print('❌ مجلد lib غير موجود');
    return;
  }
  
  final dartFiles = libDir
      .listSync(recursive: true)
      .where((entity) => entity is File && entity.path.endsWith('.dart'))
      .cast<File>()
      .toList();
  
  print('📊 إحصائيات المشروع:');
  print('عدد الملفات: ${dartFiles.length}\n');
  
  int totalFiles = 0;
  int filesUnder80 = 0;
  int filesOver80 = 0;
  int maxLines = 0;
  String? longestFile;
  
  for (final file in dartFiles) {
    try {
      final lines = file.readAsLinesSync();
      final lineCount = lines.length;
      
      totalFiles++;
      
      if (lineCount <= 80) {
        filesUnder80++;
      } else {
        filesOver80++;
        print('🔴 ${file.path}: $lineCount سطر (تجاوز الحد المسموح)');
      }
      
      if (lineCount > maxLines) {
        maxLines = lineCount;
        longestFile = file.path;
      }
      
    } catch (e) {
      print('❌ خطأ في قراءة الملف ${file.path}: $e');
    }
  }
  
  print('\n📈 النتائج النهائية:');
  print('✅ ملفات تحت 80 سطر: $filesUnder80');
  print('🔴 ملفات فوق 80 سطر: $filesOver80');
  print('📊 نسبة الامتثال: ${((filesUnder80 / totalFiles) * 100).toStringAsFixed(1)}%');
  
  if (longestFile != null) {
    print('\n📏 أطول ملف:');
    print('$longestFile: $maxLines سطر');
  }
  
  if (filesOver80 > 0) {
    print('\n⚠️  تنبيه: يوجد $filesOver80 ملفات تحتاج إلى تقسيم');
    print('👆 راجع معايير البرمجة في CODING_STANDARDS.md');
  } else {
    print('\n🎉 ممتاز! جميع الملفات تلتزم بالمعيار');
  }
}
