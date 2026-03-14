[Setup]
AppName=AbuJena Dawajen
AppVersion=1.0.0
DefaultDirName={autopf}\AbuJena Dawajen
DefaultGroupName=AbuJena Dawajen
; هنا سيتم حفظ ملف الـ Setup النهائي على سطح المكتب
OutputDir=userdocs:Output
OutputBaseFilename=AbuJena_Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Files]
; 1. ملف المكتبات (يجب أن يكون في هذا المسار بالضبط)
Source: "G:\flutter_projects\abujena_dawajen\vcredist_x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall

; 2. ملفات التطبيق من مجلد الـ Release
Source: "G:\flutter_projects\abujena_dawajen\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Run]
; تثبيت المكتبات مع إضافة أمر الانتظار وعدم المتابعة إلا بعد الانتهاء
Filename: "{tmp}\vcredist_x64.exe"; Parameters: "/install /quiet /norestart"; Check: NeedVCRedist; StatusMsg: "جاري تثبيت ملحقات ويندوز الضرورية (MSVCP140.dll)..."

; تشغيل البرنامج بعد التأكد من تثبيت المكتبات
Filename: "{app}\abujena_dawajen.exe"; Description: "{cm:LaunchProgram,AbuJena Dawajen}"; Flags: nowait postinstall skipifsilent

[Code]
// وظيفة ذكية للتأكد إذا كان الجهاز يحتاج للمكتبات فعلاً أم أنها موجودة مسبقاً
function NeedVCRedist(): Boolean;
begin
  // إذا لم يجد ملف الـ DLL في النظام، سيعيد true ليقوم بتثبيته
  Result := not FileExists(ExpandConstant('{sys}\MSVCP140.dll'));
end;