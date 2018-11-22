*** Settings ***
Resource  ../Resourses/Po/ProductListPage.robot
Resource  ../Resourses/PO/LandingPage.robot
Resource  ../Resourses/Po/CheckoutPage.robot


*** Keywords ***

Search for Product
    LandingPage.Verify Page Loaded
    LandingPage.Search for a product

Select Product from Search result
    ProductListPage.Select one product from the search

Add product to Cart
    ProductListPage.Add one product to cart

Begin Checkout
    CheckoutPage.Click the ckechout button

