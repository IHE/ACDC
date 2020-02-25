<style type="text/css">
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "3.73";
}</style>
## 3.73 Report Assessment \[PCC-73\]

This section corresponds to Transaction PCC-73 of the IHE PCC Technical Framework.
Transaction PCC-73 is used by the Assessment Requester and Assessor Actors.

### 3.73.1 Scope

The Report Assessment transaction is used to report the results of an assessment.
The result of this transaction is the production of a FHIR QuestionnaireResponse
Resource that contains the results of the assessment.

### 3.73.2 Actor Roles

![Report Assessment Use Case Diagram](PCC-73-Use-Case.svg "Report Assessment Use Case Diagram")
<div style='clear: left'/>
Figure 3.73.2-1: Use Case Diagram

<table border='1' borderspacing='0'>
<caption><b>Table 3.73.2-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody>
  <tr><td>Assessment Requestor</td>
  <td>Requests an assessment be performed using the specified FHIR Questionnaire
      Resource for the patient and encounter in the current context.</td>
</tr>
  <tr><td>Assessor</td>
  <td>Responds to request, by creating a FHIR QuestionnaireResponse Resource
      for the patient and encounter in the current context representing the
      execution of the assessment instrument provided.</td></tr>
</tbody>
</table>



### 3.73.3 Referenced Standards

<table border='1' borderspacing='0'>
<caption><b>Table 3.71.3-1: Referenced Standards</b></caption>
<thead><tr><th>Standard</th><th>Name</th></tr></thead>
<tbody>
<tr><td>HL7 FHIR</td><td><a href='http://www.hl7.org/fhir/R4/index.html'>HL7&#174; FHIR#174 standard R4</a></td></tr>
<tr><td>IETF RFC 2616</td>
    <td><a href='https://ietf.org/rfc/rfc2616.html'>Hypertext Transfer Protocol - HTTP/1.1</a></td></tr>
<tr><td>IETF RFC 7540</td>
    <td><a href='https://ietf.org/rfc/rfc7540.html'>Hypertext Transfer Protocol - HTTP/2</a></td></tr>
<tr><td>IETF RFC 3986</td>
    <td><a href='https://ietf.org/rfc/rfc3986.html'>Uniform Resource Identifier (URI): Generic Syntax</a></td></tr>
<tr><td>IETF RFC 4627</td>
    <td><a href='https://ietf.org/rfc/rfc4627.html'>The application/json Media Type for JavaScript Object Notation (JSON)</a></td></tr>
<tr><td>IETF RFC 6585</td>
    <td><a href='https://ietf.org/rfc/rfc6585.html'>Additional HTTP Status Codes</a></td></tr>
</tbody>
</table>

### 3.73.4 Interaction Diagram

#### 3.73.4.1 Create Assessment message

The Assessor reports the results of the assessment in a QuestionnaireResponse to
the Assessment Requester as a QuestionnaireResponse.

##### 3.73.4.1.1 Trigger Events

When an assessment is complete the Assessor will send the Create Assessment Message
to the Assessment Requester actor.

##### 3.73.4.1.2 Message Semantics

The semantics of the QuestionnaireResponse are treated as the returned result from
an assessment request. There is no expectation from this transaction that the results
are necessarily persisted permanently within the patient chart. The results may be
used to further refine treatment plans, record observations in the patient chart,
or be used for purposes other than being stored. There is no requirement in this
profile that the Assessment Requester be able to support the read, search or update
transactions on the "created" QuestionnaireResponse.

Implementations should document what is done with the QuestionnaireResponse.

The semantics of the QuestionnaireResponse are treated as an update to a previously
recorded assessment. There is no expectation from this transaction that the results
are persisted permanently within the patient chart. The assessment may be used to
further refine treatment plans, record observations in the patient chart, or be used
for purposes other than being stored. There is no requirement in this profile that
the Assessment Requester be able to support the read, search or update transactions
on the "created" QuestionnaireResponse.

Implementations should document what is done with the QuestionnaireResponse.

##### 3.73.4.1.3 Expected Actions

The Assessor performs a create operation on the QuestionnaireResponse endpoint of
the Assessment Requester with a body of the transaction containing the QuestionnaireResponse
resource as constrained in the QuestionnaireResponse profile described in section
6.6.Y2. The value of Questionnaire.status in this request shall be "completed".

This is an HTTP or HTTPS POST of a QuestionnaireResponse resource, as constrained
by this profile. See <http://hl7.org/fhir/R4/http.html#create>. The request shall
specify the Content-Type (either application/xml or application/json) in the Content-Type
header.

An example message is given below.

~~~
    POST [base]/QuestionnaireResponse
    Content-Type: application/json
    {
      { "resourceType": "QuestionnaireResponse" },
      { "status": "completed" },
                          ∶
    }
~~~

The Assessment Requester responds, with success or error, as defined by the FHIR
RESTful create interaction. See <http://hl7.org/fhir/R4/http.html#create>.

Upon success, the Assessment Requester shall include a Location header that specifies
the URL associated with the assessment. This URL may be used with a subsequent Update
Assessment message.

An example response is given below:

~~~
    HTTP 200 Ok
    Location: [base]/QuestionnaireResponse/523ede5e-fe46-4d11-8c29-ae36ee64e730
~~~
#### 3.73.4.1 Update Assessment message

The Assessor reports the results of the updated assessment in a QuestionnaireResponse
to the Assessment Requester as a QuestionnaireResponse.

##### 3.73.4.1.1 Trigger Events

When an assessment is updated, the Assessor will send the Update Assessment Message
to the Assessment Requester actor.

##### 3.73.4.1.2 Message Semantics

The semantics of the QuestionnaireResponse are treated as an update to a previously
recorded assessment. There is no expectation from this transaction that the results
are persisted permanently within the patient chart.

##### 3.73.4.1.3 Expected Actions

The Assessor performs an update operation on the QuestionnaireResponse endpoint of
the Assessment Requester with a body of the transaction containing the QuestionnaireResponse
resource as constrained in the QuestionnaireResponse profile described in section
6.6.Y2. The Assessor shall set the value of Questionnaire.status in this request
to "amended" or "entered-in-error".

This is an HTTP or HTTPS PUT of a QuestionnaireResponse resource. See <http://hl7.org/fhir/R4/http.html#update>.
The request shall specify the Content-Type (either application/xml or application/json)
in the Content-Type header.

An example message is given below.

~~~
    PUT \[base\]/QuestionnaireResponse
    Content-Type: application/json

    {
      { "resourceType": "QuestionnaireResponse" },
      { "status": "amended" },
                          ∶
    }
~~~

The Assessment Requester responds, with success or error, as defined by the FHIR
RESTful create interaction. See <http://hl7.org/fhir/R4/http.html#update>.

Upon success, the Assessment Requester should include a Location header that specifies
the URL associated with the assessment.

An example response is given below:

~~~
    HTTP 200 Ok
    Location: \[base\]/QuestionnaireResponse/523ede5e-fe46-4d11-8c29-ae36ee64e730
~~~

#### 3.73.5 Capability Statement Resource

Assessor and Assessment Requester actors implementing this transaction shall provide
a CapabilityStatement Resource as described in [ITI TF-2x: Appendix Z.3](appendixz.html#Z3)
indicating that the create and update operations for QuestionnaireResponse have been
implemented and shall include all the supported parameters.

### 3.73.6 Security Considerations

The posted content contains PHI and potentially III that shall be protected. See
the general Security Considerations in PCC TF-1: 15.5.

#### 3.73.6.1 Security Audit Considerations

When grouped with the Secure Node or Secure Application actor, the Assessor actor
generates a "Export" Audit Message and the Assessment Requester generates an "Import"
Audit Message, which is consistent with ATNA. The Report Assessment \[PCC-73\] is a PHI Export/PHI Import event pair as defined in Table ITI TF-2:3.20.4.1.1.1-1. Table ITI TF-2:3.20.4.1.1.1-1. The message shall comply with the [IHE ACDC Report Assessment Audit Event](StructureDefinition-ihe-acdc-reportassessment-auditevent.html)
profile, represented by the following pattern:

* Event *for the Assessor*
    - EventID = EV (110106, DCM, "Export")
    - EventTypeCode = EV("PCC-73", "IHE Transactions", "Report Assessment")
    - EventActionCode = "R" (Read)
* Event *for the Assessment Requestor*
    - EventID = EV (110107, DCM, "Import")
    - EventTypeCode = EV("PCC-73", "IHE Transactions", "Report Assessment")
    - EventActionCode = "C" (Create)
* Source of the request (1..1)
    - UserID = The Assessor actor system identity
    - RoleIDCode = EV(110153, DCM, "Source")
* Patient (1..1)
    - *No additional constraints*
* Participating Object (0..*)
    - ParticipantObjectTypeCode = 2 (system)
    - ParticipantObjectTypeCodeRole = 4 (other)
    - ParticipantObjectIDTypeCode = EV("QuestionnaireResponse", FHIR, "QuestionnaireResponse")]
    - ParticipantObjectID = *QuestionnaireResponse.identifier*
* Human Requestor (0..n) ->  one for each known User
    - UserID = Identity of the human that initiated the transaction.
    - RoleIDCode = Access Control role(s) the user holds that allows this transaction
* Destination of the request (1..1)
    - Assessment Requester actor system identity
    - RoleIDCode = EV(110152, DCM, "Destination")
* Audit Source (1..1)
    - *No additional constraints*
