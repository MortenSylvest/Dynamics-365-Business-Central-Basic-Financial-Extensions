pageextension 57626 "Customer Template Card BF" extends "Customer Template Card"
{
    layout
    {
        modify("Territory Code")
        {
            ApplicationArea = Basic;
        }
        modify("Allow Line Disc.")
        {
            ApplicationArea = Basic;
        }
        modify("Invoice Disc. Code")
        {
            ApplicationArea = Basic;
        }
        modify("Payment Terms Code")
        {
            ApplicationArea = Basic;
        }
        modify("Payment Method Code")
        {
            ApplicationArea = Basic;
        }
        modify("Shipment Method Code")
        {
            ApplicationArea = Basic;
        }
    }
    actions
    {
        modify("Invoice &Discounts")
        {
            ApplicationArea = Basic;
        }
    }
}