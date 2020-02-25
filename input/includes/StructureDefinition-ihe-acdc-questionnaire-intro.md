<style>
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "6.6.106";
}
</style>
The IHE ACDC Questionnaire Profile defines the constraints on Questionnaire resources returned by the
PCC-71 transaction, and referenced by the QuestionnaireResponse resource used in the PCC-73 transaction.
This resource describes the Questionnaire that represents an Assessment that can be performed on a
patient.

## Constraints
At a minimum, Questionnaire resources that comply with this provide must provide:

extension\[@url="http://ihe.net/fhir/ACDC/StructureDefinition/questionnaire-launchurl"]
: The EHR launch URL for the questionnaire.  This is the URL to use for the SMART on FHIR [EHR Launch](http://www.hl7.org/fhir/smart-app-launch/#ehr-launch-sequence) flow. At least one of these elements must be present when no items
are provided in the questionnaire.  It enables limited content to be returned from a questionnaire to enable others to
explore assessment instrument content without fully exposing the content of the questionnaire.

url
: a canonical URI that is used represent the questionnaire. This is essentially a unique identifier
for the questionnaire instrument.

name
: The name of the questionnaire \(for computer use).

title
: The title of the questionnaire \(for human use).

date
: The date of last update to the questionnaire.

publisher
: The name of the inidividual or organization that published the questionnaire.

description
: A natural language description of the questionnaire.

item
: If the EHR launch is not provided, at least one item must be present in the response. This enables the
Assessor actor implement the assessment described by questionnaire.
