<style type="text/css">
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "3.72";
}</style>

This section corresponds to Transaction PCC-72 of the IHE PCC Technical
Framework. Transaction PCC-72 is used by the Assessment Requester and
Assessor Actors.

### 3.72.1 Scope

The Request Assessment transaction is used to request the assessment
defined in a Questionnaire resource. The result of this transaction is
the display of, and interaction with a user in order to complete an
assessment.

### 3.72.2 Actor Roles

Figure 3.72.2-1: Use Case Diagram

Table 3.72.2-1: Actor Roles

<table border='1' borderspacing='0'>
<caption><b>Table 3.72.2-1: Actor Roles</b></caption>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody>
  <tr><td>Assessment Requestor</td>
  <td>Requests an assessment be performed using the specified FHIR
      Questionnaire Resource for the patient and encounter in the current
      context.</td>
</tr>
  <tr><td>Assessor</td>
  <td>Responds to request, by creating a FHIR QuestionnaireResponse Resource
      for the patient and encounter in the current context representing the
      execution of the assessment instrument provided.</td></tr>
</tbody>
</table>


### 3.72.3 Referenced Standards

<table border='1' borderspacing='0'>
<caption><b>Table 3.72.3-1: Referenced Standards</b></caption>
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

### 3.72.4 Interaction Diagram

#### 3.72.4.1 Establish Context message

When the EHR Launch option is not used, the EHR system or user will
establish the context for performing the assessment through a mechanism
not specified in this profile. This may be by placing an order,
launching and configuring a web application for the patient being
assessed, or through some other mechanism.

When the Assessment Requester actor implements the EHR Launch option,
this message uses a SMART on FHIR EHR Launch sequence to establish the
context and launch the assessment for a given patient with the specified
Questionnaire resource.

##### 3.72.4.1.1 Trigger Events

An assessment is requested for a patient.

##### 3.72.4.1.2 Message Semantics

When used without the EHR Launch option, the user or system that
launches the Assessor instrument must first establish the patient and
encounter context with the Assessor.

When used with the EHR Launch option, the patient context is established
with a SMART on FHIR application through the EHR launch sequence. The
Assessment Requester actor corresponds to the EHR actors described in
SMART on FHIR. The Assessor actor corresponds to the App actor described
in SMART on FHIR. The questionnaire to use for the assessment is
recorded in the context returned by the EHR Authorization Server in the
SMART on FHIR Authorization Sequence.

##### 3.72.4.1.3 Expected Actions

*The Assessment Requester and Assessor actors establish a context in
which they agree upon the assessment instrument, the patient, the
encounter and the user performing the assessment, and the assessment is
ready to be performed.*

*When the EHR Launch option is used, the Assessment Requester shall
launch the Assessor as specified by the SMART on FHIR EHR Launch
sequence.*

#### 3.72.4.2 Assess Patient Activity message

This is a user interface action performed by the assessor to capture the
assessment data from the user and to provide additional assessment
information.

#### 3.72.4.2.1 Trigger Events

This message is triggered by launching the Assessor.

#### 3.72.4.2.2 Semantics

*The user or patient (or patient representative) is provided with a
series of prompts or questions and responds to them. The user responses
are collected in a FHIR QuestionnaireResponse resource.*

#### 3.72.4.2.3 Expected Actions

The Assessor will display enough context information to ensure patient
safety and data integrity (e.g., the patient name, gender, birthdate,
and MRN, the encounter, et cetera), and will display the title of the
assessment and user interface to capture data needed for the assessment.

The assessor will prompt the user (e.g., provider or patient) and
enables them to respond.

The user completes the assessment.

Upon completion the Assessor will transmit the results by performing the
PCC-73 transaction.

#### 3.72.4.4 Capability Statement Resource

Assessor and Assessment Requester actors implementing this transaction
shall provide a CapabilityStatement Resource as described in [ITI TF-2x:
Appendix Z.3](appendixz.html#Z3).

When the EHR Lauch option is support, this capability statement shall
provide the required information to support a SMART on FHIR EHR Launch.

### 3.72.5 Security Considerations

The posted content contains PHI and potentially III that shall be
protected. See the general [Security Considerations](securityconsiderations.html)
in PCC TF-1: 15.5.

#### 3.72.5.1 Security Audit Considerations

When the EHR Launch option is used and the actors are grouped with the
Secure Node or Secure Application actor, the Assessment Requestor and
Assessor actors both generate an Application Start Audit Event
consistent with ATNA. The message shall comply with the following
pattern:

  * Event
    - EventID = EV 110100, Application Activity, "Audit event: Application Activity has taken place.")
    - EventTypeCode = EV(110120, Application Start, "Audit event: Application Entity has started.")
    - EventActionCode = "X" (Execute)
  * Application Launcher (1..1)
    - UserID = The Assessment Requestor actor system identity
    - RoleIDCode = EV(110151, DCM, "Application Launcher")
  * Patient (1..1)
    - The identity of the patient being assessed.
  * Human Requestor (0..n) -> one for each known User
    - UserID = Identity of the human that initiated the transaction.
    - RoleIDCode = Access Control role(s) the user holds that allows this transaction
    - Application (1..1)
    - Asessor actor system identity
    - RoleIDCode = EV(110150, DCM, "Application")
  * Audit Source (1..1)
    - not specified


When the assessment is complete, the Assessor shall issue an Application
Stop audit event. The message shall comply with the following pattern:

  * Event
    - EventID = EV 110100, Application Activity, "Audit event: Application Activity has taken place.")
    - EventTypeCode = EV(110121, Application Stop, "Audit event: Application Entity has stopped.")
    - EventActionCode = "X" (Execute)
  * Application Launcher (1..1)
    - UserID = The Assessment Requestor actor system identity
    - RoleIDCode = EV(110151, DCM, "Application Launcher")
  * Patient (1..1)
    - The identity of the patient being assessed.
  * Human Requestor (0..n) -> one for each known User
    - UserID = Identity of the human that initiated the transaction.
    - RoleIDCode = Access Control role(s) the user holds that allows this transaction
    - Application (1..1)
    - Asessor actor system identity
    - RoleIDCode = EV(110150, DCM, "Application")
  * Audit Source (1..1)
    - not specified

