*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Select one product from the search
    Click link  xpath = //div[@class='a-row a-spacing-none scx-truncate-medium sx-line-clamp-2']/a[@title='RASTAR Ferrari Remote Control Car, 1/24 Scale Ferrari 458 Italia Model Car, Red Ferrari Toy Car, 27 MHz']
    Wait until page contains  Back to search results for "Ferrari 458"

Add one product to cart
    Click button  xpath = //input[@id='add-to-cart-button']
    Wait until page contains  Added to Cart