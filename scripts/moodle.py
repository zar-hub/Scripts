#!/usr/bin/env python3

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()
driver.get("https://moodle2.units.it")

# get elements
usr = driver.find_element_by_id("login_username")
psw = driver.find_element_by_id("login_password")

# insert usr, psw, and press enter
usr.send_keys("username")
psw.send_keys("password")
psw.submit()
