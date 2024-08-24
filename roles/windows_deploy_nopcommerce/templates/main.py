from selenium.webdriver import Chrome
import time
from selenium.webdriver.chrome.options import Options

opts = Options()
opts.set_headless()
assert opts.headless

browser = Chrome(options=opts)
browser.get('http://{{ inventory_hostname }}/install')

usernameField =  browser.find_element_by_id('AdminEmail')
usernameField.clear()
usernameField.send_keys("Admin@{{ win_deploynopcommerce_domain }}")

passwordField =  browser.find_element_by_id('AdminPassword')
passwordField.send_keys("{{ win_deploynopcommerce_team_password }}")

confirmPasswordField =  browser.find_element_by_id('ConfirmPassword')
confirmPasswordField.send_keys("{{ win_deploynopcommerce_team_password }}")

databaseField = browser.find_element_by_xpath("//select[@name='DataProvider']/option[text()='MySQL']")
databaseField.click()

createDatabaseBox = browser.find_element_by_id('CreateDatabaseIfNotExists')
createDatabaseBox.click()

serverNameField = browser.find_element_by_id('ServerName')
serverNameField.send_keys("{{ win_deploynopcommerce_mssql_srv }}")

databaseNameField = browser.find_element_by_id('DatabaseName')
databaseNameField.send_keys("{{ win_deploynopcommerce_database_name }}")

sqlUsernameField = browser.find_element_by_id("Username")
sqlUsernameField.send_keys("{{ win_deploynopcommerce_database_user }}")

sqlPasswordField = browser.find_element_by_id("Password")
sqlPasswordField.send_keys("{{ win_deploynopcommerce_database_pass }}")

time.sleep(1)
submitButton = browser.find_element_by_xpath('//button[text()="Install"]')
submitButton.click()
time.sleep(120)
browser.close()
