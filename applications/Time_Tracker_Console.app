<?xml version="1.0" encoding="UTF-8"?>
<CustomApplication xmlns="http://soap.sforce.com/2006/04/metadata">
    <brand>
        <headerColor>#0070D2</headerColor>
        <shouldOverrideOrgTheme>false</shouldOverrideOrgTheme>
    </brand>
    <formFactors>Large</formFactors>
    <isNavAutoTempTabsDisabled>false</isNavAutoTempTabsDisabled>
    <isNavPersonalizationDisabled>false</isNavPersonalizationDisabled>
    <isNavTabPersistenceDisabled>false</isNavTabPersistenceDisabled>
    <label>Time Tracker Console</label>
    <navType>Console</navType>
    <tabs>Time_Card__c</tabs>
    <tabs>Time_Entry__c</tabs>
    <tabs>Project__c</tabs>
    <tabs>standard-Account</tabs>
    <uiType>Lightning</uiType>
    <utilityBar>Time_Tracker_Console_UtilityBar</utilityBar>
    <workspaceConfig>
        <mappings>
            <tab>Project__c</tab>
        </mappings>
        <mappings>
            <tab>Time_Card__c</tab>
        </mappings>
        <mappings>
            <fieldName>Time_Card__c</fieldName>
            <tab>Time_Entry__c</tab>
        </mappings>
        <mappings>
            <tab>standard-Account</tab>
        </mappings>
    </workspaceConfig>
</CustomApplication>
