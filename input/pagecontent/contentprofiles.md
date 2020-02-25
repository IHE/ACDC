### Content Profiles
The following FHIR profiles are defined by this specification.

#### Resource Profiles
The ACDC Profile defines FHIR profiles for:

* the [Questionnaire](StructureDefinition-ihe-acdc-questionnaire.html "Questionnaire") resource returned
  by the [PCC-71 Query Artifact](queryartifact.html) transaction.
This resource can also be contained contained in the QuestionnaireResponse resource
returned by the [PCC-73 Report Assessment](queryartifact.html) transaction.

* the [QuestionnaireResponse](StructureDefinition-ihe-acdc-questionnaireresponse.html "QuestionnaireResponse") resource created
  by [PCC-73 Report Assessment](transactions.html#pccx3) transaction.

#### Extensions
* A [Launch URL](StructureDefinition-questionnaire-launchurl.html "Launch URL") extension that enables the SMART on FHIR Launch URL for an assessment
instrument to be specified in a Questionnaire resource returned by the [PCC-71 Query Artifact](actorsandtransactions.html#pcc-71).

* A [contained Questionnaire reference](StructureDefinition-ihe-acdc-contained-questionnairereference.html "contained Questionnaire reference") that enables
the QuestionnaireResponse to reference a copy of the Questionnaire resource in the QuestionResponse
resource created by the [PCC-73 Report Assessment transaction](actorsandtransactions.html#pcc-73).
