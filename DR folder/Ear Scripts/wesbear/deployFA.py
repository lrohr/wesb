modules=['NCL_CruiseFADesc','NCL_CruiseCategoryDesc']
for moduleName in modules:
	appName=moduleName+"App"
	print "Installing "+appName
	earName="c:\\wesbear\\"+moduleName+"App.ear"
	try:
		AdminApp.uninstall(appName)
		AdminConfig.save()
	except:
		pass
	try:
		AdminApp.install(earName)
		AdminConfig.save()
	except:
		print "Unexpected error: ", sys.exc_info()[0], sys.exc_info()[1]
		pass
	AdminConfig.save()

#*******Generating binding script for moduleNCL_CruiseCategoryDesc*******
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import GetAvailCategoriesImport1 -endpointURL <GetAvailCategoriesImport1>http://167.118.127.224:9430</GetAvailCategoriesImport1> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import GetAvailCategoriesImport1 -endpointURL <getAvailCategories>http://167.118.127.224:9430</getAvailCategories> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import VXLoadAgencyImport1 -endpointURL <VXLoadAgencyImport1>http://167.118.127.224:9430</VXLoadAgencyImport1> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import VXLoadAgencyImport1 -endpointURL <loadAgency>http://167.118.127.224:9430</loadAgency> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import LogoutImport1 -endpointURL <LogoutImport1>http://167.118.127.224:9430</LogoutImport1> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import LogoutImport1 -endpointURL <logout>http://167.118.127.224:9430</logout> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import UpdateBookingImport1 -endpointURL <UpdateBookingImport1>http://167.118.127.224:9430</UpdateBookingImport1> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import UpdateBookingImport1 -endpointURL <updateBooking>http://167.118.127.224:9430</updateBooking> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import VXAPIIfcImport1 -endpointURL <VXAPIIfcImport1>http://167.118.127.224:9430</VXAPIIfcImport1> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseCategoryDesc -import VXAPIIfcImport1 -endpointURL <SendSID>http://167.118.127.224:9430</SendSID> ]')
AdminConfig.save()

#*******Generating binding script for moduleNCL_CruiseFADesc*******
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseFADesc -import callFareAvail -endpointURL <callFareAvail>http://167.118.127.224:9430</callFareAvail> ]')
AdminTask.modifySCAImportHttpBinding('[-moduleName NCL_CruiseFADesc -import callFareAvail -endpointURL <getFareAvailability>http://167.118.127.224:9430</getFareAvailability> ]')
AdminConfig.save()