Profile:        ACDCQueryArtifactAuditEvent
Parent:         AuditEvent
Id:             ihe-acdc-queryartifact-auditevent
Title:          "IHE ACDC Query Artifact AuditEvent Profile"
Description:    "Defines constraints and extensions on the AuditEvent Resource for audit messages used with the IHE ACDC Profile [PCC-71] Query Artifact Transaction"

/*
Event
    EventID = EV(110112, DCM, “Query”)
    EventTypeCode = EV(“PCC-71”, “IHE Transactions”, “Query Artifact”)
    EventActionCode = “E” (Execute)
*/
* type = http://dicom.nema.org/resources/ontology/DCM#110112 "Query"
* subtype = urn:oid:1.3.6.1.4.1.19376.1.2#PCC-71 "Query Artifact"
* action = #E

/*
Source of the request (1..1)
    UserID = The Artifact Consumer actor system identity
    RoleIDCode = EV(110153, DCM, “Source”)
*/

* agent ^slicing.discriminator[0].type = #pattern
* agent ^slicing.discriminator[0].path = "role"
* agent ^slicing.discriminator[1].type = #pattern
* agent ^slicing.discriminator[1].path = "requestor"
* agent ^slicing.description = "Slicing is based on role and requestor."
* agent ^slicing.ordered = false
* agent ^slicing.rules = #open

* agent contains Source 1..1 and HumanRequestor 0..* and Destination 1..1

* agent[Source].role =  http://dicom.nema.org/resources/ontology/DCM#110153 "Source"
* agent[Source].requestor = false
* agent[Source].altId 1..1
* agent[Source].name 1..1

/*
Human Requestor (0..n) -> one for each know User
    UserID = Identity of the human that initiated the transaction.
    RoleIDCode = Access Control role(s) the user holds that allows this transaction
*/
* agent[HumanRequestor].requestor = true
* agent[HumanRequestor].role 0..*
* agent[HumanRequestor].altId 1..1
* agent[HumanRequestor].name 1..1

/*
Destination of the request (1..1)
    Clinical Knowledge Resource Repository actor system identity
    RoleIDCode = EV(110152, DCM, “Destination”)
*/
* agent[Destination].role =  http://dicom.nema.org/resources/ontology/DCM#110152 "Destination"
* agent[Destination].requestor = false
* agent[Destination].altId 1..1
* agent[Destination].name 1..1


/*
Audit Source (1..1)
    not specified
*/
* source 1..1
* source.site 1..1
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#6 "Security Server"

/*
Query Parameters (1..1)
    ParticipantObjectTypeCode = “2” (system object)
    ParticipantObjectTypeCode Role = “24” (query)
    ParticipantObjectIDTypeCode = EV(“PCC-71”, “IHE Transactions”, “Query Artifact”)
    ParticipantObjectQuery = Requested URL including query parameters, base64 encoded
    ParticipantObjectDetail = HTTP Request Headers contained in the query (e.g., Accept header)
*/

* entity 1..1
* entity.type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2
* entity.type.display = "System Object"
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#24
* entity.role.display = "Query"
* entity.query 1..1
* entity.detail 0..*