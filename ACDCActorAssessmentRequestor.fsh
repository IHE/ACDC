Instance:       ACDCActorAssessmentRequestor
InstanceOf:     CapabilityStatement
Title:          "IHE ACDC Assessment Requestor Actor Capability Statement"
* id = "acdc-actor-assessmentrequestor"
* rest[0].mode = #server
//* rest.security.extension[http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris].extension[token].valueUri = "https://example.com/auth/token"
//* rest.security.extension[http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris].extension[authorize].valueUri = "https://example.com/auth/authorize"
* rest[0].security.cors = true
* rest[0].security.service = #SMART-on-FHIR
* rest[0].security.description = """
When the Assessment Requestor implements the EHR Launch Option, it must include a rest.security element
that has rest.security.cors = true and rest.security.service = "SMART-on-FHIR".  It shall furthermore include the token and authorize
endpoints using the oauth-uris extension described at [http://www.hl7.org/fhir/smart-app-launch/StructureDefinition-oauth-uris.html](http://www.hl7.org/fhir/smart-app-launch/StructureDefinition-oauth-uris.html)
"""
* rest[0].resource.type = #QuestionnaireResponse
* rest[0].resource.profile =  "http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-questionnaireresponse"
* rest[0].resource.documentation = "The AssessmentRequestor Actor responds to QuestionnaireResponse create interactions."
* rest[0].resource.interaction.code = #create
* rest[0].resource.interaction.documentation = """
When the QuestionnaireResponse is created, it may include a contained copy of the Questionnaire
resource that was used to produce the response.  This has proven to be helpful to facilite consumption
as it avoids additional retrievals of the questionnaire resource by the AssessmentRequestor"""
