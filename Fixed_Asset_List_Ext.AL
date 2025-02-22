pageextension 50201 "Fixed Asset List Ext" extends "Fixed Asset List"
{
    layout
    {
        addafter("FA Class Code")
        {
            field("Farsi Class Name"; Rec."Farsi Class Name")
            {
                ApplicationArea = All;
                Caption = 'FA Class Name';
                ToolTip = 'Specifies the Persian equivalent of the class name';
                Editable = false; // Non-editable, as it is retrieved from the FA Class table
            }
        }
        addafter("FA Subclass Code")
        {
            field("Farsi Subclass Name"; Rec."Farsi Subclass Name")
            {
                ApplicationArea = All;
                Caption = 'FA Subclass Name';
                ToolTip = 'Specifies the Persian equivalent of the subclass name';
                Editable = false; // Non-editable, as it is retrieved from the FA Subclass table
            }
        }
        addafter("FA Location Code")
        {
            field("Farsi Location Name"; Rec."Farsi Location Name")
            {
                ApplicationArea = All;
                Caption = 'FA Location Name';
                Editable = false;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        // Populating the Farsi Class Name and Farsi Subclass Name fields from the FA Class and FA Subclass tables
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
        if Rec."FA Location Code" <> '' then begin
            FALocation.Get(Rec."FA Location Code");
            Rec."Farsi Location Name" := FALocation.Name;
        end else
            Rec."Farsi Location Name" := '';
    end;

    var
        FAClass: Record "FA Class";
        FASubclass: Record "FA Subclass";
        FALocation: Record "FA Location";
}