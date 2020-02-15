Profile:        ACDCQuestionnaire
Parent:         Questionnaire
Id:             ihe-acdc-questionnaire
Title:          "IHE ACDC Questionnaire Profile"
Description:    "Defines constraints and extensions on the Questionnaire Resource for questionnaires used with the IHE ACDC Profile"
* extension contains ACDCLauchURLExtension 0..* MS
* extension[ACDCLauchURLExtension] ^description "If items are not present, then the question must report the launch url of an Assessor that can perform the assessment.  An Assessment Requestor that supports the EHR Launch option must launch the assessment instrument using one of the values supplied in this extension."
* url           1..1
* url ^description "Canonical identifier for this questionnaire, represented as a URI (globally unique)"
* name          1..1
* name ^description "A computer friendly name for this questionnaire must be present"
* title         1..1
* title ^description "The human friendly name for this questionnaire must be present"
* date          1..1
* date ^description "The date the questionnaire was last changed must be present"
* publisher     1..1
* publisher ^description "The publisher of the questionnaire must be identified"
* description   1..1
* descritption ^description "A Natural language description of the questionnaire must be present"