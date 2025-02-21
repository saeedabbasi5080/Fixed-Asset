// pageextension 50201 "Fixed Asset List Ext" extends "Fixed Asset List"
// {
//     layout
//     {
//         addafter("FA Class Code")
//         {
//             field("Farsi Class Name"; Rec."Farsi Class Name")
//             {
//                 ApplicationArea = All;
//                 Caption = 'Farsi Class Name11';
//                 ToolTip = 'Specifies the Persian equivalent of the class name';
//             }
//         }
//         addafter("FA Subclass Code")
//         {
//             field("Farsi Subclass Name"; Rec."Farsi Subclass Name")
//             {
//                 ApplicationArea = All;
//                 Caption = 'Farsi Subclass Name11';
//                 ToolTip = 'Specifies the Persian equivalent of the subclass name';
//             }
//         }
//     }
// }


pageextension 50201 "Fixed Asset List Ext" extends "Fixed Asset List"
{
    layout
    {
        addafter("FA Class Code")
        {
            field("Farsi Class Name"; Rec."Farsi Class Name")
            {
                ApplicationArea = All;
                Caption = 'Farsi Class Name00';
                ToolTip = 'Specifies the Persian equivalent of the class name';
                Editable = false; // غیرقابل ویرایش، زیرا از جدول FA Class گرفته می‌شود
            }
        }
        addafter("FA Subclass Code")
        {
            field("Farsi Subclass Name"; Rec."Farsi Subclass Name")
            {
                ApplicationArea = All;
                Caption = 'Farsi Subclass Name00';
                ToolTip = 'Specifies the Persian equivalent of the subclass name';
                Editable = false; // غیرقابل ویرایش، زیرا از جدول FA Subclass گرفته می‌شود
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        // پر کردن فیلدهای Farsi Class Name و Farsi Subclass Name از جداول FA Class و FA Subclass
        if Rec."FA Class Code" <> '' then begin
            FAClass.Get(Rec."FA Class Code");
            Rec."Farsi Class Name" := FAClass.Name;
        end else
            Rec."Farsi Class Name" := '';

        if Rec."FA Subclass Code" <> '' then begin
            FASubclass.Get(Rec."FA Subclass Code");
            Rec."Farsi Subclass Name" := FASubclass.Name;
        end else
            Rec."Farsi Subclass Name" := '';
    end;

    var
        FAClass: Record "FA Class";
        FASubclass: Record "FA Subclass";
}