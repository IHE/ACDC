Instance:       ACDCActorArtifactConsumer
InstanceOf:     CapabilityStatement
Title:          "IHE ACDC Artifact Consumer Actor Capability Statement"
* id = "acdc-actor-artifactconsumer"
* name = "ACDC_ArtifactConsumer"
* kind = #requirements
* format[0] = #xml
* format[1] = #json
* fhirVersion = #4.0.1
* description = """
This CapabilityStatement resource demonstrates how a system documents conformance
as an Artifact Consumer Actor in the ACDC Profile.
"""

* rest[0].mode = #client
* rest[0].resource.type = #Questionnaire
* rest[0].resource.profile =  "http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-questionnaire"
* rest[0].resource.documentation = "The Artifact Consumer Actor initiates Questionnaire read and search interactions"
* rest[0].resource.interaction[0].code = #search-type
* rest[0].resource.interaction[0].documentation = "This interaction corresponds to the IHE PCC-X1 and PCC-X2 transactions."
