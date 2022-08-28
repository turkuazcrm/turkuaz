<?php

class SetupWizardCest
{
    public function landsOnSetupWizard(AcceptanceTester $I)
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
        $I->type('turkuaz');
        $I->click('input[name=db_password]');
        $I->type('turkuaz');
        $I->click('input[name=db_name]');
        $I->type('turkuaz_development');
        $I->click('input[name=password]');
        $I->type('SecretPassw0rd');
        $I->click('input[name=retype_password]');
        $I->type('SecretPassw0rd');
        $I->click('input[name=firstname]');
        $I->type('John');
        $I->click('input[name=lastname]');
        $I->type('Doe');
        $I->click('input[name=admin_email]');
        $I->type('doe@example.com');
        $I->click('Next');

        $I->see('Confirm Configuration Settings');
        $I->click('Next');

        $I->see('One last thing...');  // TODO: Pick an item from dropdown
        $I->click('Next');
        $I->see('Installation in progress');
    }
}
