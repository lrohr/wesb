modules=['E-Mail_Generic','Encrypt_Decrypt','ErrorHandlerMod','Generic_Service','LAT_Log_Logger','NCL_AccToPs','NCL_AmenityRetrieveHelper','NCL_CruieFitConfirmation_Module','NCL_CruiseAmenityOrderMgt.ear','NCL_CruiseAmenityOrderMgt','NCL_CruiseApplyCouponsAsDiscount','NCL_CruiseBookingPayment','NCL_CruiseCheckBookingStatus_Module','NCL_CruiseCreateAgency_Module','NCL_CruiseCreateAgent_Module','NCL_CruiseCreateAmenityOrderItems','NCL_CruiseCreateClient_Module','NCL_CruiseFastSellModule','NCL_CruiseGroupAccountingWorkup_Module','NCL_CruiseGroupContract_Module','NCL_CruiseLinkReservation_Module','NCL_CruiseManageAltResId','NCL_CruisePayForAmenities','NCL_CruisePaywithCoupons','NCL_CruiseRegistration','NCL_CruiseRetrieveAgency','NCL_CruiseRetrieveAgency_Module','NCL_CruiseRetrieveAgent_Module','NCL_CruiseRetrieveAvailAmenities','NCL_CruiseRetrieveAvailCouponInfo','NCL_CruiseRetrieveClient_Module','NCL_CruiseRetrieveGroupBookings_Module','NCL_CruiseRtrvNameList_Module','NCL_CruiseTransferAvail','NCL_CruiseTransportAvail','NCL_CruiseUserAuthentication_Module','NCL_LATITUDES_CLIENT_JRN_Module','NCL_LATITUDES_CLIENT_POINTS_TRG_Module','NCL_LATITUDES_POINTS_LOOKUP_Module','NCL_LookupCabinDetailsEAR.ear','ProdNCLFuseBoxMediation','ProdPostPendingCardTxn','Ps_Maps','TP_Logger','VxAdvisoryErrorLookup']
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