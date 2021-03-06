Instance:       ACDCActorAssessor
InstanceOf:     CapabilityStatement
Title:          "IHE ACDC Assessor Actor Capability Statement"
* id = "acdc-actor-assessor"
* name = "ACDC_Assessor"
* kind = #requirements
* status = #active
* date = "2020-02-25"
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* description = """
This CapabilityStatement resource demonstrates how a system documents conformance
as an Assessor Actor in the ACDC Profile.
"""

* rest[0].mode = #client
* rest[0].security.cors = true
* rest[0].security.service = #SMART-on-FHIR
* rest[0].security.description = """
When the Assessor implements the EHR Launch Option, it must include a rest.security element
that has rest.security.cors = true and rest.security.service = "SMART-on-FHIR"
"""
* rest[0].resource.type = #QuestionnaireResponse
* rest[0].resource.profile =  "http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-questionnaireresponse"
* rest[0].resource.documentation = "The Assessor Actor initiates QuestionnaireResponse create interactions"
* rest[0].resource.interaction.code = #create
* rest[0].resource.interaction.documentation = """This interaction corresponds to the IHE PCC-73 transaction.
When the QuestionnaireResponse is created, it may include a contained copy of the Questionnaire
resource that was used to produce the response.  This has proven to be helpful to facilite consumption
as it avoids additional retrievals of the questionnaire resource by the AssessmentRequester"""
