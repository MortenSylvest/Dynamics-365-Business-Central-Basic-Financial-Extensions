pageextension 57604 "Vendor List BF" extends "Vendor List"
{
    actions
    {
        modify(Quotes)
        {
            ApplicationArea = Advanced;
        }
        modify("Vendor - Order Detail")
        {
            ApplicationArea = Advanced;
        }
        modify("Vendor - Order Summary")
        {
            ApplicationArea = Advanced;
        }
        modify("Blanket Orders")
        {
            ApplicationArea = Advanced;
        }
        modify(NewBlanketPurchaseOrder)
        {
            ApplicationArea = Advanced;
        }
        modify(NewPurchaseQuote)
        {
            ApplicationArea = Advanced;
        }
        modify(NewPurchaseOrder)
        {
            ApplicationArea = Advanced;
        }
        modify(OrderAddresses)
        {
            ApplicationArea = Advanced;
        }
    }
}