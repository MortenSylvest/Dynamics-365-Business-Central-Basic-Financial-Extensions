pageextension 57600 "Salespersons/Purchasers BF" extends "Salespersons/Purchasers"
{
    layout
    {
        modify(Name)
        {
            ApplicationArea = Basic;
        }
        modify("Commission %")
        {
            ApplicationArea = Basic;
        }
        modify("Phone No.")
        {
            ApplicationArea = Basic;
        }
        modify("Privacy Blocked")
        {
            ApplicationArea = Basic;
        }
    }
    actions
    {
        modify("Con&tacts")
        {
            ApplicationArea = Basic;
        }
    }
}