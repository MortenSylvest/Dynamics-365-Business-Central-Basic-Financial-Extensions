Authors

Morten Sylvest, ERPgruppen

Peter Jakobsen, Technologystrategist


For pdf formatted document see "Information document D365 Business Central BASIC ISV Extension.pdf"



Documentation and information D365 Business Central BASIC ISV Extension

The following is a description of how you use the BASIC Extension with a tenant using the BASIC ISV License, and how the BASIC Extension is meant to be used. This document will also contain some of the lessons learned doing the planning, development and test of the Extension.

Introduction
Basically the Extension is an attempt at making the UI more aligned with what is accessible in the BASIC License. This means that menus and functions that are not part of the License is hidden by the Extension.
 The Extension is only changing the application areas visible to the users of the tenant and does not change functionality in any way. This is important as should any errors regarding access or other error be displayed to the users then it’s the License/permission set provided by Microsoft that controls this and not the Extension. The same goes for any functional errors in the system which should be handled as you would handle any error in Business Central. 
Note: The current version of Business Central (13.2 (27692)) doesn’t have the correct permission set for BASIC ISV. See chapter on Testing the Extension for information on how to install and test on this version of Business Central.

Compatibility
The Extension is for the Danish and Icelandic version of Business Central, as the BASIC ISV License is only sold in these markets. There is no official support for the Extension which means that you are responsible for making sure the extension runs on future versions of Business Central. Feel free to customize the extension to your needs but be aware that some of the areas that are hidden by the Extension is in order to prevent the use of areas that cannot be locked by License or Permissions (e.g. Order handling)

Dynamics 365 Business Central Basic Extension Description
The Extension create and sets a new Experience Tier “Basic Financial”
  
The new Experience Tier “Basic Financial” disabled the following Application Areas
•	Relationship Mgmt

•	Assembly

•	Item Charges

•	Planning

•	Item Tracking

•	Intercompany

•	Sales Return Order

•	Purch Return Order

•	Cost Accounting

•	Sales Budget

•	Purchase Budget

•	Item Budget

•	Sales Analysis

•	Purchase Analysis

•	Inventory Analysis

•	Reservation

•	Order Promising

•	ADCS

 
User Experience 
To align the User Experience, the Extensions include approximate 40 pages Extensions, where the Application Area is being Modified. The Extension use two standard Application Area “Basic” to show and “Advanced” to hide an Action or layout. We have f.x. hidden the ability to create orders in the system as this is not part of the BASIC ISV License.
 
Relationship Mgmt is not included in D365BC Basic, and therefore disabled, but some of the Contact information is included. 
The Application Area “Suite” is almost included in D365BC Basic. The content of the Suite is too extensive, and therefore not possible to deactivate this Application Area. 

 
Package and Installation
All the files for the Extension are in the folder “BasicFinancialExtension”
 
In order to install on a BASIC tenant you need to create the .APP file in VSCODE using the files. The files are using object range 57600-57699. You are welcome to renumber the objects as well as add prefix etc. to the objects.
When the .APP file has been created you install it on the tenant from the Extension Management page by choosing “Upload Extension”. Select the .APP file and when Extension is Installed it will appear in the list of installed Extensions.
   
Be aware that the Extension sets the application areas for BASIC during the installation. In the current version of Business Central it is not possible to “re-set” the application on Uninstall, so you have to set the User Experience to the required experience after uninstall manually in the Company Information page
 
Testing the Extension
This is a few tips as to how you test the BASIC ISV Extension. As previously mentioned the current version of Business Central (13.2 (27692) doesn’t have access to all objects necessary for using BASIC license yet. In order to get around this limitation until Business Central is updated the following method can be used in order to test the BASIC ISV setup.
1.	Create a tenant with an Essentials license, or create a trial version of Business Central.

2.	In order to “simulate” that we are running on a BASIC ISV license it is necessary to import a new Permission Set, and add this to the User Group D365 BASIC ISV.
  
  a.	Import File “Permission Sets - BASIC_ISV - after create company bug fixed feb 06 2019.xml”
  
  b.	When import is completed you will have a user generated permission set named D365 BASIC ISV V2 (Or other name if you change name in the file)
  
  c.	Go to User Groups and choose D365 BASIC ISV, and choose User Group Permission Set.
  
  d.	Add D365 BASIC ISV V2 to the User Group.
3.	The User Group D365 BASIC ISV will now reflect how the permission will be for a BASIC License user.

4.	For every user that should have the BASIC ISV permission make sure the users have the below User Groups:


When testing you cannot use the CRONUS demo company out of the box. CRONUS has some setup that will cause the BASIC ISV to fail as the tables are not included in the BASIC ISV license (Sales shipments, Purch. Receipts).

During the test of the Extension we used a company created with the standard C5 Import and added necessary setup for testing purposes.

Feedback
As mentioned the extension is meant to be used as is or as a template for partners to work with, and there will be no guaranteed maintenance or upgrades of the extension. If you are experiencing problems with the extension you are welcome to add comments/questions on the GitHub site. We will try to answer to the best of our abilities.



