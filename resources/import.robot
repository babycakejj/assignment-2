*** Settings ***
Library     Browser
Library     DebugLibrary
Library     String

Resource    ${CURDIR}/settings.robot

#page keywords
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/filter_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot
Resource    ${CURDIR}/../keywords/pages/home_page.robot

