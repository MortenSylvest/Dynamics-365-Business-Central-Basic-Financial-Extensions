Write-Host ("Start")
$Input = "C:\temp\BF\365BC_PagesAsText.txt"
$Output  = "C:\temp\BF\365BC_PagesAsText.csv"

[System.IO.File]::Delete($Output)

$Writer = [System.IO.File]::CreateText($Output)
$Reader = [System.IO.File]::OpenText($Input)

function ResetObjectVar
{
    $global:ObjectType =""
    $global:SourceTable =""
    $global:ObjectApplicationArea =""
    $global:PageObject =""
    $global:PageType =""
    $global:Type = ""
    $global:SourceExpr=""
    $global:ApplicationArea =""
}

function ResetApplicationAreaVar
{
    $global:ApplicationArea =""
    $global:All =""
    $global:Invoicing =""
    $global:Basic =""
    $global:Suite =""
    $global:RelationshipMgmt =""
    $global:Jobs =""
    $global:FixedAssets =""
    $global:Location =""
    $global:BasicHR =""
    $global:Assembly =""
    $global:ItemCharges =""
    $global:Advanced =""
    $global:Warehouse =""
    $global:Service =""
    $global:Manufacturing =""
    $global:Planning =""
    $global:Dimensions =""
    $global:ItemTracking =""
    $global:Intercompany =""
    $global:SalesReturnOrder =""
    $global:PurchReturnOrder =""
    $global:Prepayments =""
    $global:CostAccounting =""
    $global:SalesBudget =""
    $global:PurchaseBudget =""
    $global:ItemBudget =""
    $global:SalesAnalysis =""
    $global:PurchaseAnalysis =""
    $global:InventoryAnalysis =""
    $global:XBRL =""
    $global:Reservation =""
    $global:OrderPromising =""
    $global:ADCS =""
    $global:Comments =""
}

function SetApplicationAreaVar 
{
    
    IF ($global:ApplicationArea.contains("#All")){$global:All = "True"}
    IF ($global:ApplicationArea.contains("#Invoicing")){$global:Invoicing = "True"}
    IF ($global:ApplicationArea.contains("#Basic")){$global:Basic = "True"}
    IF ($global:ApplicationArea.contains("#Suite")){$global:Suite = "True"}
    IF ($global:ApplicationArea.contains("#RelationshipMgmt")){$global:RelationshipMgmt = "True"}
    IF ($global:ApplicationArea.contains("#Jobs")){$global:Jobs = "True"}
    IF ($global:ApplicationArea.contains("#FixedAssets")){$global:FixedAssets = "True"}
    IF ($global:ApplicationArea.contains("#Location")){$global:Location = "True"}
    IF ($global:ApplicationArea.contains("#BasicHR")){$global:BasicHR = "True"}
    IF ($global:ApplicationArea.contains("#Assembly")){$global:Assembly = "True"}
    IF ($global:ApplicationArea.contains("#ItemCharges")){$global:ItemCharges = "True"}
    IF ($global:ApplicationArea.contains("#Advanced")){$global:Advanced = "True"}
    IF ($global:ApplicationArea.contains("#Warehouse")){$global:Warehouse = "True"}
    IF ($global:ApplicationArea.contains("#Service")){$global:Service = "True"}
    IF ($global:ApplicationArea.contains("#Manufacturing")){$global:Manufacturing = "True"}
    IF ($global:ApplicationArea.contains("#Planning")){$global:Planning = "True"}
    IF ($global:ApplicationArea.contains("#Dimensions")){$global:Dimensions = "True"}
    IF ($global:ApplicationArea.contains("#ItemTracking")){$global:ItemTracking = "True"}
    IF ($global:ApplicationArea.contains("#Intercompany")){$global:Intercompany = "True"}
    IF ($global:ApplicationArea.contains("#SalesReturnOrder")){$global:SalesReturnOrder = "True"}
    IF ($global:ApplicationArea.contains("#PurchReturnOrder")){$global:PurchReturnOrder = "True"}
    IF ($global:ApplicationArea.contains("#Prepayments")){$global:Prepayments = "True"}
    IF ($global:ApplicationArea.contains("#CostAccounting")){$global:CostAccounting = "True"}
    IF ($global:ApplicationArea.contains("#SalesBudget")){$global:SalesBudget = "True"}
    IF ($global:ApplicationArea.contains("#PurchaseBudget")){$global:PurchaseBudget = "True"}
    IF ($global:ApplicationArea.contains("#ItemBudget")){$global:ItemBudget = "True"}
    IF ($global:ApplicationArea.contains("#SalesAnalysis")){$global:SalesAnalysis = "True"}
    IF ($global:ApplicationArea.contains("#PurchaseAnalysis")){$global:PurchaseAnalysis = "True"}
    IF ($global:ApplicationArea.contains("#InventoryAnalysis")){$global:InventoryAnalysis = "True"}
    IF ($global:ApplicationArea.contains("#XBRL")){$global:XBRL = "True"}
    IF ($global:ApplicationArea.contains("#Reservation")){$global:Reservation = "True"}
    IF ($global:ApplicationArea.contains("#OrderPromising")){$global:OrderPromising = "True"}
    IF ($global:ApplicationArea.contains("#ADCS")){$global:ADCS = "True"}
    IF ($global:ApplicationArea.contains("#Comments")){$global:Comments = "True"}
}

function ResetTempVar
{
    $global:LineNo =""
    $global:Caption =""
    $global:CaptionENU =""
    $global:ActionName =""

    $global:startIndex = ""
    $global:length = ""
    $global:RunObject = ""
    $global:Type = ""
    $global:SourceExpr=""
}

function WriteHeading
{
    $Array = "ObjectType","SourceTable","PageObject","PageType","Type","SourceExpr","RunObject","Action Name","Caption ENU","ApplicationArea","All","Invoicing","Basic","Suite","Relationship Mgmt","Jobs","Fixed Assets","Location","BasicHR","Assembly","Item Charges","Advanced","Warehouse","Service","Manufacturing","Planning","Dimensions","Item Tracking","Intercompany","Sales Return Order","Purch Return Order","Prepayments","Cost Accounting","Sales Budget","Purchase Budget","Item Budget","Sales Analysis","Purchase Analysis","Inventory Analysis","XBRL","Reservation","Order Promising","ADCS","Comments"
    $separator = ";"
    $Data = [string]::Join($separator,$Array)
    $Writer.WriteLine($Data)
    #Write-Host ($Data)
}

function ReplaceCharacter
{
    $global:ObjectType = $global:ObjectType -replace ";",""
    $global:SourceTable = $global:SourceTable -replace ";",""
    $global:PageObject = $global:PageObject -replace ";",""
    $global:PageType = $global:PageType -replace ";",""
    $global:Type = $global:Type -replace ";",""
    $global:SourceExpr = $global:SourceExpr -replace ";",""
    $global:RunObject = $global:RunObject -replace ";",""
    $global:ActionName = $global:ActionName -replace ";",""
    $global:CaptionENU = $global:CaptionENU -replace ";",""
    $global:ApplicationArea = $global:ApplicationArea -replace ";",""
    $global:All = $global:All -replace ";",""
    $global:Invoicing = $global:Invoicing -replace ";",""
    $global:Basic = $global:Basic -replace ";",""
    $global:Suite = $global:Suite -replace ";",""
    $global:RelationshipMgmt = $global:RelationshipMgmt -replace ";",""
    $global:Jobs = $global:Jobs -replace ";",""
    $global:FixedAssets = $global:FixedAssets -replace ";",""
    $global:Location = $global:Location -replace ";",""
    $global:BasicHR = $global:BasicHR -replace ";",""
    $global:Assembly = $global:Assembly -replace ";",""
    $global:ItemCharges = $global:ItemCharges -replace ";",""
    $global:Advanced = $global:Advanced -replace ";",""
    $global:Warehouse = $global:Warehouse -replace ";",""
    $global:Service = $global:Service -replace ";",""
    $global:Manufacturing = $global:Manufacturing -replace ";",""
    $global:Planning = $global:Planning -replace ";",""
    $global:Dimensions = $global:Dimensions -replace ";",""
    $global:ItemTracking = $global:ItemTracking -replace ";",""
    $global:Intercompany = $global:Intercompany -replace ";",""
    $global:SalesReturnOrder = $global:SalesReturnOrder -replace ";",""
    $global:PurchReturnOrder = $global:PurchReturnOrder -replace ";",""
    $global:Prepayments = $global:Prepayments -replace ";",""
    $global:CostAccounting = $global:CostAccounting -replace ";",""
    $global:SalesBudget = $global:SalesBudget -replace ";",""
    $global:PurchaseBudget = $global:PurchaseBudget -replace ";",""
    $global:ItemBudget = $global:ItemBudget -replace ";",""
    $global:SalesAnalysis = $global:SalesAnalysis -replace ";",""
    $global:PurchaseAnalysis = $global:PurchaseAnalysis -replace ";",""
    $global:InventoryAnalysis = $global:InventoryAnalysis -replace ";",""
    $global:XBRL = $global:XBRL -replace ";",""
    $global:Reservation = $global:Reservation -replace ";",""
    $global:OrderPromising = $global:OrderPromising -replace ";",""
    $global:ADCS = $global:ADCS -replace ";",""
    $global:Comments = $global:Comments -replace ";",""
}

function WriteLine
{
    SetApplicationAreaVar
    ReplaceCharacter
    $Array = $global:ObjectType,$global:SourceTable,$global:PageObject,$global:PageType,$global:Type,$global:SourceExpr,$global:RunObject,$global:ActionName,$global:CaptionENU,$global:ApplicationArea,$All,$global:Invoicing,$global:Basic,$global:Suite,$global:RelationshipMgmt,$global:Jobs,$global:FixedAssets,$global:Location,$global:BasicHR,$global:Assembly,$global:ItemCharges,$global:Advanced,$global:Warehouse,$global:Service,$global:Manufacturing,$global:Planning,$global:Dimensions,$global:ItemTracking,$global:Intercompany,$global:SalesReturnOrder,$global:PurchReturnOrder,$global:Prepayments,$global:CostAccounting,$global:SalesBudget,$global:PurchaseBudget,$global:ItemBudget,$global:SalesAnalysis,$global:PurchaseAnalysis,$global:InventoryAnalysis,$global:XBRL,$global:Reservation,$global:OrderPromising,$global:ADCS,$global:Comments
    $separator = ";"
    $Data = [string]::Join($separator,$Array)
    $Writer.WriteLine($Data)
    #Write-Host ($Data)
    if ($global:Type -eq "Page") 
    {
        Write-Host $global:ObjectType
    }  
    ResetApplicationAreaVar
    ResetTempVar
}

ResetObjectVar
ResetApplicationAreaVar
ResetTempVar

WriteHeading

# Read lines
while($null -ne ($line = $reader.ReadLine())) {

    IF ($line.contains("{"))
    {
        ResetApplicationAreaVar
        ResetTempVar
    }
    
    IF ($line -like "OBJECT *") 
    {
        $global:ObjectType = $line.substring(7,$line.length-7)
        $global:PageObject = $line.substring(12,$line.length-12)
        $global:PageObject = "Page " + $global:PageObject.substring(0,$global:PageObject.IndexOf(" "))
    }   
    IF ($line -like "    SourceTable=Table*"){$global:SourceTable = $line.substring(21,$line.length-22)}  
    IF ($line -like "    ApplicationArea=*"){$global:ApplicationArea = $line.substring(20,$line.length-21)}
    IF ($line -like "    PageType=*"){$global:PageType = $line.substring(13,$line.length-14)}
    IF ($line -like "    CaptionML=*"){$global:Caption = "True"}
    IF ($line -like "                      CaptionML=*"){$global:Caption = "True"}
    IF ($line -like "                      Name=*"){$global:ActionName = $line.substring(27,$line.length-28)}
    IF ($line.contains("RunObject")){$global:RunObject = $line.substring(32,$line.length-33)}
    IF ($line.contains(";Action")){$global:Type = "Action"}
    IF ($line.contains(";ActionGroup")){$global:Type = "ActionGroup"}
    IF ($line.contains(";Field")){$global:Type = "Field"}

    IF ($Caption -eq "True")
    {
      IF ($line.contains("ENU="))
      {
        $global:Caption = ""
        $global:startIndex = $line.IndexOf("ENU=")+4
        IF ($line.contains("]"))
        {
            $global:length = $line.IndexOf("]")-$global:startIndex
            $global:CaptionENU= $line.substring($global:startIndex,$global:length)
        }
        ELSEIF ($line.contains(";"))
        {
            $global:length = $line.IndexOf(";")-$global:startIndex
            $global:CaptionENU= $line.substring($global:startIndex,$global:length)
        }
        ELSEIF ($line.contains("}"))
        {
            $global:length = $line.IndexOf("}")-$global:startIndex
            $global:CaptionENU= $line.substring($global:startIndex,$global:length)
        }
      }
    }

    IF ($line.contains("    PageType="))
    {
        $global:Type = "Page"
        WriteLine
        $global:Type = ""
    }

    IF ($global:Type -eq "Action")
    {
      IF ($line.contains("SourceExpr="))
      {
        $global:SourceExpr = $line -replace ";",""
        $global:SourceExpr = $global:SourceExpr -replace " }",""
      }
      IF ($line.contains("ApplicationArea="))
      {

        
        $global:startIndex = $line.IndexOf("ApplicationArea=")+16
        $global:length = $line.length-$global:startIndex
        $global:ApplicationArea = $line.substring($global:startIndex,$global:length)
        $global:ApplicationArea = $global:ApplicationArea -replace ";",""

        
      }
      IF ($line.contains("}"))
      {
        IF ($global:ApplicationArea.contains("#"))
        {
            WriteLine
        }
      }
    }

    IF ($global:Type -eq "Field")
    {
      IF ($line.contains("ApplicationArea="))
      {
        $global:startIndex = $line.IndexOf("ApplicationArea=")+16
        $global:length = $line.length-$global:startIndex
        $global:ApplicationArea = $line.substring($global:startIndex,$global:length)
        $global:ApplicationArea = $global:ApplicationArea -replace ";",""
      }
      IF ($line.contains("SourceExpr="))
      {
        $global:SourceExpr = $line.substring($line.IndexOf("SourceExpr=")+11,$line.length-$line.IndexOf("SourceExpr=")-11)
        $global:SourceExpr = $global:SourceExpr -replace ";",""
        $global:SourceExpr = $global:SourceExpr -replace " }",""
      }
      IF ($line.contains("}"))
      {
        IF ($global:ApplicationArea.contains("#"))
        {
            WriteLine
        }
      }
    }
}

$Writer.Close()
Write-Host ("END")