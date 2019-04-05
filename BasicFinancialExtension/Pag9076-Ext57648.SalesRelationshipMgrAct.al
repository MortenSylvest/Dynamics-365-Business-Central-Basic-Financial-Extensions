
pageextension 57648 "Sales&Relationship Mgr Act BF" extends "Sales & Relationship Mgr. Act."
{
    layout
    {
        modify("Opportunities Due in 7 Days")
        {
            ApplicationArea = Basic;
        }
        modify("Open Sales Quotes")
        {
            ApplicationArea = Basic;
        }
    }
    /* NewContact Action has been removed in D365BC Version 14.1 
    actions
    {
        modify(NewContact)
        {
            ApplicationArea = Basic;
        }
    }
    */
}