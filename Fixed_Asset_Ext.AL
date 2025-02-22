tableextension 50200 "Fixed Asset Ext" extends "Fixed Asset"
{
    fields
    {
        field(50209; "Farsi Class Name"; Text[100])
        {
            Caption = 'FA Class Name';
            Description = 'Persian equivalent of the class name';
            DataClassification = CustomerContent;
            TableRelation = "FA Class".Name; // Relationship with the class name in the FA Class table
        }
        field(50210; "Farsi Subclass Name"; Text[100])
        {
            Caption = 'FA Subclass Name';
            Description = 'Persian equivalent of the subclass name';
            DataClassification = CustomerContent;
            TableRelation = "FA Subclass".Name; // Relationship with the subclass name in the FA Subclass table
        }
        field(50111; "Farsi Location Name"; Text[100])
        {
            Caption = 'FA Location Name';
            TableRelation = "FA Location".Name;
        }

    }
}