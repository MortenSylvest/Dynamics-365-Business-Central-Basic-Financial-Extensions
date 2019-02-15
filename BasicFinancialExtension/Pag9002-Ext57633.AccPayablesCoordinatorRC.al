pageextension 57633 "Acc Payables Coordinator RC BF" extends "Acc. Payables Coordinator RC"
{
    actions
    {
        modify("Purchase Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("&Purchase Order")
        {
            ApplicationArea = Advanced;
        }
        modify("Purchase Return Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("Posted Return Shipments")
        {
            ApplicationArea = Advanced;
        }
        modify("Posted Purchase Receipts")
        {
            ApplicationArea = Advanced;
        }
    }
}