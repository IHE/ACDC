### Content Profiles
The following FHIR profiles are defined by this specification.

#### Resource Profiles
The ACDC Profile defines FHIR profiles for:

* the [Questionnaire](ihe-acdc-questionnaire.html "Questionnaire") resource returned by the PCC-X1 Query Artifact and PCC-X2 Retrieve Artifact transactions.
This resource can also be contained contained in the QuestionnaireResponse resource
returned by the PCC-X4 Report Assessment transaction.

* the [QuestionnaireResponse](ihe-acdc-questionnaireresponse.html  "QuestionnaireResponse") resource created by PCC-X4 Report Assessment transaction.

#### Extensions
* A [Launch URL](extension-questionnaire-launchurl.html "Launch URL") extension that enables the SMART on FHIR Launch URL for an assessment
instrument to be specified in a Questionnaire resource returned by the PCC-X1 Query Artifact
and PCC-X2 Retrieve Artifact transaction.

* A [contained Questionnaire reference](extension-ihe-acdc-contained-questionnairereference.html "contained Questionnaire reference") that enables
the QuestionnaireResponse to reference a copy of the Questionnaire resource in the QuestionResponse
resource created by the PCC-X4 Report Assessment transaction.
