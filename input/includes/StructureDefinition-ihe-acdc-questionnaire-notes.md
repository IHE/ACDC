
## User Interface
The content and presentation of items returned by the questionnaire are not defined by this profile.  The
content of these questionnaires can be further constrained by the HL7 [Structured Data Capture](http://hl7.org/fhir/us/sdc/)
or [Patient Reported Outcomes](http://hl7.org/fhir/us/patient-reported-outcomes/2019May/) FHIR Implementation Guides in order to support different presentation
and assessment capabilities.  An Assessor that also implements Form Filler capabilities of these profiles can
be used to implement the user interface and collect data from the patient or provider to perform the assessment.

## EHR Launch URL
When an Clinical Knowledge Resource Repository that supports the EHR Launch option returns the questionnaire, it
must return at least one extension\[@url="http://ihe.net/fhir/ACDC/StructureDefinition/questionnaire-launchurl"] field populated with a URL that will execute the questionnaire
via the SMART on FHIR EHR Launch workflow.

More than one EHR Launch URL may be returned in the Questionnaire resource.  The Assessment Requester actor
can choose any of these URLs to enable access.

## Security Concerns
The EHR Launch URL represents an endpoint that will be used to pass launch credentials and possibly other sensitive
information, including individually identifiable information.  The URL must be an absolute URL.  The content of this URL must be secured via Transport Layer Security, and so the URL must begin with
https://.

