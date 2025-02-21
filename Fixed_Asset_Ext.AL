// tableextension 50200 "Fixed Asset Ext" extends "Fixed Asset"
// {
//     fields
//     {
//         field(50100; "Farsi Class Name"; Text[100])
//         {
//             Caption = 'Farsi Class Name00';
//             Description = 'Persian equivalent of the class name';
//             DataClassification = CustomerContent;
//         }
//         field(50101; "Farsi Subclass Name"; Text[100])
//         {
//             Caption = 'Farsi Subclass Name00';
//             Description = 'Persian equivalent of the subclass name';
//             DataClassification = CustomerContent;
//         }
//     }
// }

tableextension 50200 "Fixed Asset Ext" extends "Fixed Asset"
{
    fields
    {
        field(50209; "Farsi Class Name"; Text[100])
        {
            Caption = 'Farsi Class Name11';
            Description = 'Persian equivalent of the class name';
            DataClassification = CustomerContent;
            TableRelation = "FA Class".Name; // ارتباط با نام کلاس در جدول FA Class
        }
        field(50210; "Farsi Subclass Name"; Text[100])
        {
            Caption = 'Farsi Subclass Name11';
            Description = 'Persian equivalent of the subclass name';
            DataClassification = CustomerContent;
            TableRelation = "FA Subclass".Name; // ارتباط با نام زیرکلاس در جدول FA Subclass
        }
    }
}