Profile:        ACDCQuestionnaireResponse
Parent:         QuestionnaireResponse
Id:             ihe-acdc-questionnaireresponse
Title:          "IHE ACDC QuestionnaireResponse Profile"
Description:    "Defines constraints and extensions on the QuestionnaireResponse Resource for responses used with the IHE ACDC Profile"
* contained 0..*
* extension contains questionnaireresponse-signature 0..1
* questionnaire 1..1
* questionnaire.extension contains ACDCContainedQuestionnaireReferenceExtension 0..*
* status from ACDCQuestionnareResponseStatus (required)
* subject 1..1
* subject only Reference(Patient)
* encounter MS
* authored 1..1
* author 1..1
* source MS
* item obeys invariant-1
/*
// * contained.Questionnaire       0..1
// * contained.Questionnaire.id    1..1
*/