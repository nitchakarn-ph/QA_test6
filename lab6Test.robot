*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${TRIANGLE URL}    http://${SERVER}/lab6/RestaurantPromotion.html
${DELAY}    0.1

*** Test Cases ***
1.Customers<1 ProYes memberNo
    Open Browser    ${TRIANGLE URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Capture Page Screenshot
	Input Text    custNo    -1
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price  
	Page Should Not Contain    Promotion: One lucky draw, Offer a membership
	
2.Customers<1 ProYes memberSilver
    Input Text    custNo    -1
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price  
	Page Should Not Contain    Promotion: One lucky draw, Free 1 Sundae
	
3.Customers<1 ProYes memberGoal
	Input Text    custNo    -1
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price  
	Page Should Not Contain    Promotion: One lucky draw, Free 1 Sundae
	
4.Customers<1 ProNo memberNo
    Input Text    custNo    -1
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price  
	Page Should Not Contain    Promotion: Offer a membership
	
5.Customers<1 ProNo memberSilver
    Input Text    custNo    -1
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price  
	Page Should Not Contain    Promotion: Free 1 Sundae
	
6.Customers<1 ProNo memberGoal
    Input Text    custNo    -1
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price  
	Page Should Not Contain    Promotion: Free 1 Sundae
	
7.Customers>1 ProYes memberNo
	Input Text    custNo    4
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price = 2235.5200000000004 baht  
	Page Should Contain    Promotion: One lucky draw, Offer a membership
	
8.Customers>1 ProYes memberSilver
	Input Text    custNo    4
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price = 2235.5200000000004 baht  
	Page Should Contain    Promotion: One lucky draw, Free 1 Sundae
	
9.Customers>1 ProYes memberGoal
	Input Text    custNo    4
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price = 2235.5200000000004 baht  
	Page Should Contain    Promotion: One lucky draw, Free 1 Sundae
	
10.Customers>1 ProNo memberNo
	Input Text    custNo    4
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price = 2235.5200000000004 baht  
	Page Should Contain    Promotion: Offer a membership
	
11.Customers>1 ProNo memberSilver
	Input Text    custNo    4
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price = 2235.5200000000004 baht  
	Page Should Contain    Promotion: Free 1 Sundae
	
12.Customers>1 ProNo memberGoal
	Input Text    custNo    4
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price = 2235.5200000000004 baht  
	Page Should Contain    Promotion: Free 1 Sundae
	
13.Customers11 ProYes memberNo
    Input Text    custNo    11
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price  = 6147.679999999999 baht
	Page Should Contain    Promotion: One lucky draw, Offer a membership
	
14.Customers11 ProYes memberSilver
    Input Text    custNo    11
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price  = 6147.679999999999 baht
	Page Should Contain    Promotion: One lucky draw, Free 1 Sundae
	
15.Customers11 ProYes memberGoal
	Input Text    custNo    11
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price = 6147.679999999999 baht 
	Page Should Contain    Promotion: One lucky draw, Free 1 Sundae
	
16.Customers11 ProNo memberNo
	Input Text    custNo    11
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price = 6147.679999999999 baht 
	Page Should Contain    Promotion: Offer a membership
	
17.Customers11 ProNo memberSilver
	Input Text    custNo    11
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price = 6147.679999999999 baht
	Page Should Contain    Promotion: Free 1 Sundae
	
18.Customers11 ProNo memberGoal
    Input Text    custNo    11
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price = 6147.679999999999 baht  
	Page Should Contain    Promotion: Free 1 Sundae
	
19.NoCustomer ProNo memberNo
    Input Text    custNo    
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price = NaN baht
	Page Should Contain    Promotions: Offer a membership
	
20.NoCustomer ProNo memberSilver
	Input Text    custNo    
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price = NaN baht
	Page Should Contain    Promotions: Free 1 Sundae
	
21.NoCustomer ProNo memberGoal
	Input Text    custNo    
	Select Radio Button    isPromotionDate    No
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price = NaN baht
	Page Should Contain    Promotions: Free 1 Sundae
	
22.NoCustomer ProYes memberNo
	Input Text    custNo    
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Not a member
    Click Button    Submit
	Page Should Not Contain    Total Price = NaN baht
	Page Should Contain    Promotions: Offer a membership
	
23.NoCustomer ProYes memberSilver
	Input Text    custNo    
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Silver
    Click Button    Submit
	Page Should Not Contain    Total Price = NaN baht
	Page Should Contain    Promotions: One lucky draw, Free 1 Sundae
	
24.NoCustomer ProYes memberGoal
	Input Text    custNo    
	Select Radio Button    isPromotionDate    Yes
	Select Radio Button    isMember    Gold
    Click Button    Submit
	Page Should Not Contain    Total Price = NaN baht
	Page Should Contain    Promotions: One lucky draw, Free 1 Sundae
	
