This section describes the PCC-X1 Query Artifact transaction of the IHE PCC Technical Framework.
This transaction is used by the [Clinical Knowledge Resource Repository](actorsandtransactions.html#CKR) and [Artifact Consumer
Actors](actorsandtransactions.html#AC).

### Scope
The Query Artifact transaction is used to query for assessment instruments in Questionnaires
that satisfy a set of parameters by using the FHIR framework. The result of the query is a
FHIR Bundle containing FHIR clinical data Resources that match the query parameters.

The ACDC Profile assumes that categories and codes referenced by these FHIR Resources
need to be defined at the time of deployment. The specification of these FHIR Resources
make recommendations on categories and codes that should be considered.

#### Actor Roles

![Query Artifact Use Case Diagram](PCC-X1-Use-Case.svg "Query Artifact Use Case Diagram")
<div style='clear: left'/>

<table border='1' borderspacing='0'>
<thead><tr><th>Actor</th><th>Role</th></tr></thead>
<tbody>
  <tr><td>Artifact Consumer</td><td>Queries the Clinical Knowledge Resource Repository
  for assessment instrument content requested by the Artifact Consumer.</td></tr>
  <tr><td>Clinical Knowledge Resource Repository</td><td>Responds to query,
  supplying the FHIR Questionnaire Resources representing the assessment instrument
  content that match the search criteria provided by the Artifact Consumer.</td></tr>
</tbody>
</table>

#### Referenced Standards
<table border='1' borderspacing='0'>
<thead><tr><th>Standard</th><th>Name</th></tr></thead>
<tbody>
<tr><td>HL7 FHIR</td><td><a href='http://www.hl7.org/fhir/R4/index.html'>HL7® FHIR® standard R4</a></td></tr>
<tr><td>IETF RFC 2616</td>
    <td><a href='https://ietf.org/rfc/rfc2616.html'>Hypertext Transfer Protocol – HTTP/1.1</a></td></tr>
<tr><td>IETF RFC 7540</td>
    <td><a href='https://ietf.org/rfc/rfc7540.html'>Hypertext Transfer Protocol – HTTP/2</a></td></tr>
<tr><td>IETF RFC 3986</td>
    <td><a href='https://ietf.org/rfc/rfc3986.html'>Uniform Resource Identifier (URI): Generic Syntax</a></td></tr>
<tr><td>IETF RFC 4627</td>
    <td><a href='https://ietf.org/rfc/rfc4627.html'>The application/json Media Type for JavaScript Object Notation (JSON)</a></td></tr>
<tr><td>IETF RFC 6585</td>
    <td><a href='https://ietf.org/rfc/rfc6585.html'>Additional HTTP Status Codes(</a></td></tr>
</tbody>
</table>

#### Interactions ####
![Query Artifact Interaction Diagram](PCC-X1-Interaction.svg "Query Artifact Interaction Diagram")
<div style='clear: left'/>

##### Query Artifact Request message
This message uses the HTTP GET method parameterized query to retrieve FHIR Questionnaire Resources representing assessment instruments matching search parameters in the GET request. This transaction performs a FHIR search request on Questionnaire resources.
ACDC does not mandate any additional extended or custom method.

###### Trigger Events
When the Artifact Consumer needs to discover Questionnaire Resources matching various search parameters it issues a Query Artifact message.

###### Message Semantics
The Artifact Consumer executes an HTTP GET against the proper Clinical Knowledge Resource Repository’s ACDC URL.
The search target follows the [FHIR http specification](http://hl7.org/fhir/R4/http.html), addressing the proper
FHIR Resource type, according to the supported [query options](#query-parameters).
The syntax of the FHIR query is:

```
GET [base]/Questionnaire?summary=true&{[parameters]}
```

with the following constraints:
* The [base] represents the Service Base URL
* The [parameters] represents a series of encoded name-value pairs representing the filter for
the query, as specified in Section 3.X1.4.1.2.1, as well as control parameters to modify the
behavior of the Clinical Knowledge Resource Repository such as response format, or pagination.
See ITI TF-2x: Appendix Z.6 for more details on response format.

The Questionnaire resources returned by this transaction shall conform to FHIR requirements
associated with the
[IHE ACDC Questionnaire Resource Profile](ihe-acdc-questionnaire.html "Questionnaire Resource Profile")
and need only include fields in the Questionnaire resource marked as being for summaries.

**<a name='query-parameters'>Query Search Parameters</a>**

All query parameter values shall be appropriately encoded per RFC 3986 "percent" encoding rules. Note that percent encoding does restrict the character set to a subset of ASCII characters which is used for encoding all other characters used in the URL.
The Clinical Knowledge Resource Repository must support any combination of the following parameters:
* code (token)
* At least one of context (token), context-quantity (quantity), context-type (token), context-type-quantity (composite), context-type-value (composite)
* date (date)
* description (string)
* name (string)
* publisher (string)
* status (token)
The Clinical Knowledge Resource Repository may choose to support additional query parameters beyond the subset
defined by the profiling listed below, if done according to the core FHIR specification. Such additional
parameters are considered out of scope for this transaction. The Clinical Knowledge Resource Repository
may ignore any additional parameter not specified in this transaction.
See http://hl7.org/fhir/R4/search.html#errors.

**Populating Expected Response Format**

The FHIR standard provides encodings for responses as either XML or JSON. The Clinical Knowledge Resource Repository shall support both message encodings, whilst the Artifact Consumer shall support one and may support both.
See [ITI TF-2x: Appendix Z.6](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=8) for details.

###### Expected Actions
The Clinical Knowledge Resource Repository shall process the query to discover Questionnaire FHIR Resource entries (the assessment instruments) that match the search parameters given and shall use a FHIR Bundle resource to collect the matching entries to be returned.
The Clinical Knowledge Resource Repository shall respond with a Mobile Artifact Query Response synchronously (i.e., on the same connection as was used to initiate the request).
See [ITI TF-2x: Appendix Z.6](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=8) for more details on response format handling. See [ITI TF-2x: Appendix Z.7](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=8)
for handling guidance for Access Denied.
