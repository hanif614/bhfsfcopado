<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_President_Awaiting_Signature_Email_for_Contract</fullName>
        <description>Send President Awaiting Signature Email for Contract</description>
        <protected>false</protected>
        <recipients>
            <recipient>President</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>billalfarhat@crm.gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/AwaitingPresidentSignature</template>
    </alerts>
    <rules>
        <fullName>Substatus President Signature</fullName>
        <actions>
            <name>Send_President_Awaiting_Signature_Email_for_Contract</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contract.Sub_Status__c</field>
            <operation>equals</operation>
            <value>Awaiting President Signature</value>
        </criteriaItems>
        <description>To send an email alert to the president whenever the substatus on contract is Awaiting President Signature</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Contract_Signature_Needed</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Substatus Vice-President Signature</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contract.Sub_Status__c</field>
            <operation>equals</operation>
            <value>Awaiting VP Signature</value>
        </criteriaItems>
        <description>To send an email alert to the president whenever the substatus on contract is Awaiting Vice-President Signature</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>VPContract_Signature_Needed</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Contract_Signature_Needed</fullName>
        <assignedTo>apres@mwbootcamp.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Yo! Sign the contract</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Contract Signature Needed</subject>
    </tasks>
    <tasks>
        <fullName>VPContract_Signature_Needed</fullName>
        <assignedTo>VPSales</assignedTo>
        <assignedToType>role</assignedToType>
        <description>Yo VP! Sign the contract</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>VP Contract Signature Needed</subject>
    </tasks>
</Workflow>
