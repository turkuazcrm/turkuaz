#!/usr/bin/env bash

# NOTE: Note to future developer.  I wanted to finish this because
#   archiving by hand is nonsense!

# Mandatory modules
#
cd pkg/vtiger/modules/Import
rm ../../../../packages/vtiger/mandatory/Import.zip
zip -9 -r ../../../../packages/vtiger/mandatory/Import.zip *
cd ../../../../

cd pkg/vtiger/modules/MailManager
rm ../../../../packages/vtiger/mandatory/MailManager.zip
zip -9 -r ../../../../packages/vtiger/mandatory/MailManager.zip *
cd ../../../../

cd pkg/vtiger/modules/Mobile
rm ../../../../packages/vtiger/mandatory/Mobile.zip
zip -9 -r ../../../../packages/vtiger/mandatory/Mobile.zip *
cd ../../../../

cd pkg/vtiger/modules/ModTracker
rm ../../../../packages/vtiger/mandatory/ModTracker.zip
zip -9 -r ../../../../packages/vtiger/mandatory/ModTracker.zip *
cd ../../../../

cd pkg/vtiger/modules/PBXManager
rm ../../../../packages/vtiger/mandatory/PBXManager.zip
zip -9 -r ../../../../packages/vtiger/mandatory/PBXManager.zip *
cd ../../../../

cd pkg/vtiger/modules/ServiceContracts
rm ../../../../packages/vtiger/mandatory/ServiceContracts.zip
zip -9 -r ../../../../packages/vtiger/mandatory/ServiceContracts.zip *
cd ../../../../

cd pkg/vtiger/modules/Services
rm ../../../../packages/vtiger/mandatory/Services.zip
zip -9 -r ../../../../packages/vtiger/mandatory/Services.zip *
cd ../../../../

cd pkg/vtiger/modules/WSAPP
rm ../../../../packages/vtiger/mandatory/WSAPP.zip
zip -9 -r ../../../../packages/vtiger/mandatory/WSAPP.zip *
cd ../../../../

# Marketplace modules
#
cd pkg/vtiger/modules/ExtensionStore
rm ../../../../packages/vtiger/marketplace/ExtensionStore.zip
zip -9 -r ../../../../packages/vtiger/marketplace/ExtensionStore.zip *
cd ../../../../

# Optional Modules
#
cd pkg/vtiger/modules/Assets
rm ../../../../packages/vtiger/optional/Assets.zip
zip -9 -r ../../../../packages/vtiger/optional/Assets.zip *
cd ../../../../

cd pkg/vtiger/modules/CustomerPortal
rm ../../../../packages/vtiger/optional/CustomerPortal.zip
zip -9 -r ../../../../packages/vtiger/optional/CustomerPortal.zip *
cd ../../../../

cd pkg/vtiger/modules/EmailTemplates
rm ../../../../packages/vtiger/optional/EmailTemplates.zip
zip -9 -r ../../../../packages/vtiger/optional/EmailTemplates.zip *
cd ../../../../

cd pkg/vtiger/modules/Google
rm ../../../../packages/vtiger/optional/Google.zip
zip -9 -r ../../../../packages/vtiger/optional/Google.zip *
cd ../../../../

cd pkg/vtiger/modules/ModComments
rm ../../../../packages/vtiger/optional/ModComments.zip
zip -9 -r ../../../../packages/vtiger/optional/ModComments.zip *
cd ../../../../

# TODO: Each directory inside it needs to be archived as well
#
cd pkg/vtiger/modules/Projects
rm ../../../../packages/vtiger/optional/Projects.zip
mkdir tmp
cd Project
zip -9 -r ../tmp/Project.zip *
cd ../ProjectMilestone
zip -9 -r ../tmp//ProjectMilestone.zip *
cd ../ProjectTask
zip -9 -r ../tmp/ProjectTask.zip *
cd ../
cp manifest.xml tmp/
cd tmp
zip -9 -r ../../../../../packages/vtiger/optional/Projects.zip *
cd ../
rm -rf tmp
cd ../../../../

cd pkg/vtiger/modules/RecycleBin
rm ../../../../packages/vtiger/optional/RecycleBin.zip
zip -9 -r ../../../../packages/vtiger/optional/RecycleBin.zip *
cd ../../../../

cd pkg/vtiger/modules/SMSNotifier
rm ../../../../packages/vtiger/optional/SMSNotifier.zip
zip -9 -r ../../../../packages/vtiger/optional/SMSNotifier.zip *
cd ../../../../

cd pkg/vtiger/modules/Webforms
rm ../../../../packages/vtiger/optional/Webforms.zip
zip -9 -r ../../../../packages/vtiger/optional/Webforms.zip *
cd ../../../../

# Optional translation modules
#
cd pkg/vtiger/translations/TurkishLanguagePack_tr_tr
rm ../../../../packages/vtiger/optional/TurkishLanguagePack_tr_tr.zip
zip -9 -r ../../../../packages/vtiger/optional/TurkishLanguagePack_tr_tr.zip *
cd ../../../../
