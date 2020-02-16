Instance:       ACDCActorClinicalKnowledgeRepository
InstanceOf:     CapabilityStatement
Title:          "IHE ACDC Clinical Knowledge Repository Actor Capability Statement"
* id = "acdc-actor-clinicalknowledgerepository"
* description = """
This CapabilityStatement resource demonstrates how a system documents conformance
as a Clinical Knowledge Repository Actor in the ACDC Profile.
"""
* rest[0].mode = #server
* rest[0].resource.type = #Questionnaire
* rest[0].resource.profile =  "http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-questionnaire"
* rest[0].resource.documentation = "The Clinical Knowledge Repository Actor responds to Questionnaire read and search interactions"
* rest[0].resource.interaction[0].code = #search-type
* rest[0].resource.interaction[0].documentation = "This interaction corresponds to the IHE PCC-X1 transaction."
* rest[0].resource.interaction[1].code = #read
* rest[0].resource.interaction[1].documentation = "This interaction corresponds to the IHE PCC-X2 transaction."
* rest[0].resource.searchParam[0].name = "_summary"
* rest[0].resource.searchParam[0].type = #token
* rest[0].resource.searchParam[0].documentation = """
The server need only to respond to search requests where
_summary=true to restrict access to the full questionnaire content.
"""

* rest[0].resource.searchParam[1].name = "code"
* rest[0].resource.searchParam[1].type = #token
* rest[0].resource.searchParam[1].documentation = """
This search parameter allows assessment instruments to be located by codes.
It must be documented in the capability stateement
"""

* rest[0].resource.searchParam[1].name = "context"
* rest[0].resource.searchParam[1].type = #token
* rest[0].resource.searchParam[1].documentation = """
This search parameter allows assessment instruments to be located based upon their use context.
A Clinical Knowledge Repository Actor must support at least one of: context (token), context-quantity (quantity),
context-type (token), context-type-quantity (composite), or context-type-value (composite) to enable users to
identify questionnaires based on the context of use. At least one of the above search parameters must be supported
and documented in the capability statement.
"""

* rest[0].resource.searchParam[2].name = "date"
* rest[0].resource.searchParam[2].type = #date
* rest[0].resource.searchParam[2].documentation = """
This search parameter allows assessment instruments to be located based upon their publication date.
It must be documented in the capability stateement
"""

* rest[0].resource.searchParam[3].name = "description"
* rest[0].resource.searchParam[3].type = #string
* rest[0].resource.searchParam[3].documentation = """
This search parameter allows assessment instruments to be located based upon the text in their description.
It must be documented in the capability stateement
"""

* rest[0].resource.searchParam[4].name = "name"
* rest[0].resource.searchParam[4].type = #string
* rest[0].resource.searchParam[4].documentation = """
This search parameter allows assessment instruments to be located based upon the text in their name.
It must be documented in the capability stateement
"""

* rest[0].resource.searchParam[5].name = "publisher"
* rest[0].resource.searchParam[5].type = #string
* rest[0].resource.searchParam[5].documentation = """
This search parameter allows assessment instruments to be located based upon the name of the publisher.
It must be documented in the capability stateement
"""

* rest[0].resource.searchParam[5].name = "status"
* rest[0].resource.searchParam[5].type = #token
* rest[0].resource.searchParam[5].documentation = """
This search parameter allows assessment instruments to be located based upon
their status (i.e., draft | active | retired | unknown).
It must be documented in the capability stateement
"""