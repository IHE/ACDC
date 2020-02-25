Instance:       ACDCExampleQueryArtifactAuditEvent
InstanceOf:     ACDCQueryArtifactAuditEvent
Title:          "IHE ACDC Example AuditEvent for the [PCC-71] Query Artifact transaction"
Description:    "An example of a populated AuditEvent sent on completion of the IHE PCC-71 transaction."
/*
Event
    EventID = EV(110112, DCM, “Query”)
    EventTypeCode = EV(“PCC-71”, “IHE Transactions”, “Query Artifact”)
    EventActionCode = “E” (Execute)
*/
* type = http://dicom.nema.org/resources/ontology/DCM#110112
* type.display = "Query"
* subtype = urn:oid:1.3.6.1.4.1.19376.1.2#PCC-71
* subtype.display = "Query Artifact"
* action = #E
* recorded = "2020-02-25T02:16:06.012-05:00"
/*
Source of the request (1..1)
    UserID = The Artifact Consumer actor system identity
    RoleIDCode = EV(110153, DCM, “Source”)
*/
* agent[Source].role =  http://dicom.nema.org/resources/ontology/DCM#110153 "Source"
* agent[Source].altId = "artifact-consumer"
* agent[Source].name = "My EHR"
* agent[Source].requestor = false

/*
Human Requestor (0..n) -> one for each know User
    UserID = Identity of the human that initiated the transaction.
    RoleIDCode = Access Control role(s) the user holds that allows this transaction
*/
* agent[HumanRequestor].role =  http://example.com/rolecode#admin "Administrator"
* agent[HumanRequestor].altId = "fred"
* agent[HumanRequestor].name = "Fred Jones"
* agent[HumanRequestor].requestor = true

/*
Destination of the request (1..1)
    Clinical Knowledge Resource Repository actor system identity
    RoleIDCode = EV(110152, DCM, “Destination”)
*/
* agent[Destination].role =  http://dicom.nema.org/resources/ontology/DCM#110152 "Destination"
* agent[Destination].altId = "assessment-provider"
* agent[Destination].name = "My Assessment Provider"
* agent[Destination].requestor = false

/*
Audit Source (1..1)
    not specified
*/
* source.site = "192.168.0.101"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#6 "Security Server"
* source.observer.reference = "Device/device-example"
/*
Query Parameters (1..1)
    ParticipantObjectTypeCode = “2” (system object)
    ParticipantObjectTypeCode Role = “24” (query)
    ParticipantObjectIDTypeCode = EV(“PCC-71”, “IHE Transactions”, “Query Artifact”)
    ParticipantObjectQuery = Requested URL including query parameters, base64 encoded
    ParticipantObjectDetail = HTTP Request Headers contained in the query (e.g., Accept header)
*/
* entity.type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity.role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity.query = "dXJsPWh0dHA6Ly9leGFtcGxlLmNvbS9QSFEtMg=="
* entity.detail.type = "Accept"
* entity.detail.valueString = "application/json"