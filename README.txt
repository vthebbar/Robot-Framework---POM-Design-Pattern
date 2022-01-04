This project is to illustrate Page Object Model (POM) desing pattern for automation using Robot framework.

Application : https://demo.opencart.com/

Data driven testing approach is applied in this project Framework.

Project Structure:
===================	
	PageObjects : Locates the elements in the page. For each page one locator (.py) file to be created.


	Resources :  Contains user defined keywords for each page. Separate keyword file to be created for each page.


	TestCases : Conatins Test cases , i.e executable code. One or more test case file can be created for each page.	
		    Test case file refers to the Resurces and PageObjects.


	TestData : It conatins test data stored in the excel file for the data driven testing. 
		   There are 2 tabs created (one for login data	and other for Registration data)

	
	TestResults : Once test cases are executed using "run.bat"  test results will be stored in "TestResults" folder.
		      "run.bat" file is configured to store results in this folder.


	run.bat : This is executable windows file.  We can just double click to run test cases. 
			We can also run from command line or pyCharm terminal.


Notes:
======
Tests can be run in parallel using "roborframework-pabot" plug-in.

For data driven testing "robotframework-datadriver" plug-in is required.

Test cases can be grouped(such as Sanity Tests, Regression Tests, Functional Tests etc) using [Tags]
