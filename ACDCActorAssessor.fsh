Instance:       ACDCActorAssessor
InstanceOf:     CapabilityStatement
Title:          "IHE ACDC Assessor Actor Capability Statement"
* id = "acdc-actor-assessor"
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
* rest[0].interaction.code = #create
* rest[0].interaction.documentation = """
When the QuestionnaireResponse is created, it may include a contained copy of the Questionnaire
resource that was used to produce the response.  This has proven to be helpful to facilite consumption
as it avoids additional retrievals of the questionnaire resource by the AssessmentRequestor"""
