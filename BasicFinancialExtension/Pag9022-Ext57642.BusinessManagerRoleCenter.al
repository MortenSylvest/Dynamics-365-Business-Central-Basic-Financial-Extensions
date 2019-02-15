pageextension 57642 "BusinessManagerRoleCenter BF" extends "Business Manager Role Center"
{

    actions
    {
        modify("Sales Order")
        {
            ApplicationArea = Advanced;
        }
        modify("Sales Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("Blanket Sales Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("Purchase Quotes")
        {
            ApplicationArea = Advanced;
        }
        modify("<Page Purchase Order>")
        {
            ApplicationArea = Advanced;
        }
        modify("<Page Purchase Orders>")
        {
            ApplicationArea = Advanced;
        }
        modify("Blanket Purchase Orders")
        {
            ApplicationArea = Advanced;
        }
        modify("<Page Posted Purchase Receipts>")
        {
            ApplicationArea = Advanced;
        }
        modify("Item Charges")
        {
            ApplicationArea = ItemCharges;
        }
        modify(Action131)
        {
            ApplicationArea = ItemCharges;
        }
    }
}