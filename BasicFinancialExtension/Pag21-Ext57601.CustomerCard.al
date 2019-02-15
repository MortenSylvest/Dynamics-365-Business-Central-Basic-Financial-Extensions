pageextension 57601 "Customer Card BF" extends "Customer Card"
{
    actions
    {
        modify("Blanket Orders")
        {
            ApplicationArea = Advanced;
        }
        modify(NewBlanketSalesOrder)
        {
            ApplicationArea = Advanced;
        }
        modify(NewSalesOrder)
        {
            ApplicationArea = Advanced;
        }
        modify(Orders)
        {
            ApplicationArea = Advanced;
        }
        modify(NewSalesOrderAddin)
        {
            ApplicationArea = Advanced;
        }
    }
}
