pageextension 57603 "Vendor Card BF" extends "Vendor Card"
{
    actions
    {
        modify(Quotes)
        {
            ApplicationArea = Advanced;
        }
        modify(Orders)
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
        modify(NewPurchaseOrderAddin)
        {
            ApplicationArea = Advanced;
        }
        modify(OrderAddresses)
        {
            ApplicationArea = Advanced;
        }
    }
}