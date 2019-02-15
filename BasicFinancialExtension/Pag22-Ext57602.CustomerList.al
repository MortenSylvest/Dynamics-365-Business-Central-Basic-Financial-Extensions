pageextension 57602 "Customer List BF" extends "Customer List"
{
    actions
    {
        modify("Blanket Orders")
        {
            ApplicationArea = Advanced;
        }
        modify(NewSalesBlanketOrder)
        {
            ApplicationArea = Advanced;
        }
        modify(NewSalesOrder)
        {
            ApplicationArea = Advanced;
        }
        modify("Customer - Order Detail")
        {
            ApplicationArea = Advanced;
        }
        modify("Customer - Order Summary")
        {
            ApplicationArea = Advanced;
        }
    }
}