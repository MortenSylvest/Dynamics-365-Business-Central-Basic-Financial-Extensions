pageextension 57614 "PurchOrder From SalesOrder BF" extends "Purch. Order From Sales Order"
{
    actions
    {
        modify("Event")
        {
            ApplicationArea = Advanced;
        }
        modify(Period)
        {
            ApplicationArea = Advanced;
        }
        modify(ShowAll)
        {
            ApplicationArea = Advanced;
        }
        modify(ShowUnavailable)
        {
            ApplicationArea = Advanced;
        }
        modify(Timeline)
        {
            ApplicationArea = Advanced;
        }
    }
}