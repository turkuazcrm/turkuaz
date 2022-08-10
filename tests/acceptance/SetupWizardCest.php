<?php

class SetupWizardCest
{
    public function landsOnWizard(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->see('Installation Wizard');
        $I->click('Install');
        $I->see('Mozilla Public License');
        $I->click('I Agree');
        $I->see('Installation prerequisites');
        $I->click('Next');
        $I->acceptPopup();
        $I->wait(5);
        $I->see('System Configuration');
        $I->click('input[name=db_hostname]');
        $I->type('127.0.0.1');
        $I->click('input[name=db_username]');
        $I->type('vtiger');
        $I->click('input[name=db_password]');
        $I->type('vtiger');
        $I->click('input[name=db_name]');
        $I->type('vtiger_development');
    }
}
