// pageextension 50210 "FixedAssetListExt" extends "Fixed Asset List"
// {
//     layout
//     {
//         addlast(Control1) // جایگذاری ستون‌ها در انتهای لیست
//         {
//             field("Class Name (FA)"; GetClassName(Rec."FA Class Code"))
//             {
//                 Caption = 'Class Name (FA)';
//                 Editable = false;
//             }

//             field("Subclass Name (FA)"; GetSubclassName(Rec."FA Subclass Code"))
//             {
//                 Caption = 'Subclass Name (FA)';
//                 Editable = false;
//             }
//         }
//     }

//     // توابعی برای دریافت نام کلاس و زیرکلاس از جداول مربوطه
//     local procedure GetClassName(ClassCode: Code[20]): Text[50]
//     var
//         FAClass: Record "FA Class"; // جدول FA Classes
//     begin
//         if FAClass.Get(ClassCode) then
//             exit(FAClass.Name); // مقدار فیلد "Name" را بازمی‌گرداند
//         exit('');
//     end;

//     local procedure GetSubclassName(SubclassCode: Code[20]): Text[50]
//     var
//         FASubclass: Record "FA Subclass"; // جدول FA Subclasses
//     begin
//         if FASubclass.Get(SubclassCode) then
//             exit(FASubclass.Name); // مقدار فیلد "Name" را بازمی‌گرداند
//         exit('');
//     end;
// }
