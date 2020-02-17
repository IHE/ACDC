
## Notes
### EHR Launch URL
When an Clinical Knowledge Resource Repository that supports the EHR Launch option returns the questionnaire, it
must return at least one extension\[@url="http://ihe.net/fhir/ACDC/StructureDefinition/questionnaire-launchurl"] field populated with a URL that will execute the questionnaire
via the SMART on FHIR EHR Launch workflow.

More than one EHR Launch URL may be returned in the Questionnaire resource.  The Assessment Requester actor
can choose any of these URLs to enable access.

### Security Concerns
The EHR Launch URL represents an endpoint that will be used to pass launch credentials and possibly other sensitive
information, including individually identifiable information.  The URL must be an absolute URL.  The content of this URL must be secured via Transport Layer Security, and so the URL must begin with
https://.

