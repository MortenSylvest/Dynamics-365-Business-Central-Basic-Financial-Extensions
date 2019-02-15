pageextension 57634 "Acc Receivables Adm RC BF" extends "Acc. Receivables Adm. RC"
{
    actions
    {
        modify("Sales &Order")
        {
            ApplicationArea = Advanced;
        }
        modify("Sales Return Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("Sales Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("Posted Return Receipts")
        {
            ApplicationArea = Advanced;
        }
        modify("Posted Sales Shipments")
        {
            ApplicationArea = Advanced;
        }
        modify("Combine Return S&hipments")
        {
            ApplicationArea = Advanced;
        }
        modify("Combine Shi&pments")
        {
            ApplicationArea = Advanced;
        }
    }
}