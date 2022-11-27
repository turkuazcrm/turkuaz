#!/usr/bin/env bash

# Mandatory modules
#
cd pkg/vtiger/modules/Import
zip -f -9 -r ../../../../packages/vtiger/mandatory/Import.zip *
cd ../../../../

cd pkg/vtiger/modules/MailManager
zip -f -9 -r ../../../../packages/vtiger/mandatory/MailManager.zip *
cd ../../../../

cd pkg/vtiger/modules/Mobile
zip -f -9 -r ../../../../packages/vtiger/mandatory/Mobile.zip *
cd ../../../../

cd pkg/vtiger/modules/ModTracker
zip -f -9 -r ../../../../packages/vtiger/mandatory/ModTracker.zip *
cd ../../../../

cd pkg/vtiger/modules/PBXManager
zip -f -9 -r ../../../../packages/vtiger/mandatory/PBXManager.zip *
cd ../../../../

cd pkg/vtiger/modules/ServiceContracts
zip -f -9 -r ../../../../packages/vtiger/mandatory/ServiceContracts.zip *
cd ../../../../

cd pkg/vtiger/modules/Services
zip -f -9 -r ../../../../packages/vtiger/mandatory/Services.zip *
cd ../../../../

cd pkg/vtiger/modules/WSAPP
zip -f -9 -r ../../../../packages/vtiger/mandatory/WSAPP.zip *
cd ../../../../

# Marketplace modules
#
cd pkg/vtiger/modules/ExtensionStore
zip -f -9 -r ../../../../packages/vtiger/marketplace/ExtensionStore.zip *
cd ../../../../

# Optional Modules
#
cd pkg/vtiger/modules/Assets
zip -f -9 -r ../../../../packages/vtiger/optional/Assets.zip *
cd ../../../../

cd pkg/vtiger/modules/CustomerPortal
zip -f -9 -r ../../../../packages/vtiger/optional/CustomerPortal.zip *
cd ../../../../

cd pkg/vtiger/modules/EmailTemplates
zip -f -9 -r ../../../../packages/vtiger/optional/EmailTemplates.zip *
cd ../../../../

cd pkg/vtiger/modules/Google
zip -f -9 -r ../../../../packages/vtiger/optional/Google.zip *
cd ../../../../

cd pkg/vtiger/modules/ModComments
zip -f -9 -r ../../../../packages/vtiger/optional/ModComments.zip *
cd ../../../../

# TODO: Each directory inside it needs to be archived as well
#
#cd pkg/vtiger/modules/Projects
#zip -f -9 -r ../../../../packages/vtiger/optional/Projects.zip *
#cd ../../../../

cd pkg/vtiger/modules/RecycleBin
zip -f -9 -r ../../../../packages/vtiger/optional/RecycleBin.zip *
cd ../../../../

cd pkg/vtiger/modules/SMSNotifier
zip -f -9 -r ../../../../packages/vtiger/optional/SMSNotifier.zip *
cd ../../../../

cd pkg/vtiger/modules/Webforms
zip -f -9 -r ../../../../packages/vtiger/optional/Webforms.zip *
cd ../../../../

# Optional translation modules
#
cd pkg/vtiger/translations/TurkishLanguagePack_tr_tr
zip -f -9 -r ../../../../packages/vtiger/optional/TurkishLanguagePack_tr_tr.zip *
cd ../../../../
