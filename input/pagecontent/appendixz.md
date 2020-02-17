# Introduction to Appendix Z

This content is a copy of the
[IHE IT Infrastructure Appendix Z](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf) on FHIR
published on March 6, 2019.  It is included as an aid to implementers but is not considered to be normative content.
The normative text can be found at the link above.

<div style="border: 1px solid black"><p>Whenever possible, IHE profiles are based on established and stable underlying standards.
However, if an IHE domain determines that an emerging standard has high likelihood of industry adoption, and the standard
offers significant benefits for the use cases it is attempting to address, the domain may develop IHE profiles based on such
a standard. During Trial Implementation, the IHE domain will update and republish the IHE profile as the underlying standard evolves.
</p>
<p>Product implementations and site deployments may need to be updated in order for them to remain interoperable and conformant
with an updated IHE profile.
</p>
<p>This Technical Framework Supplement is based on Release 4 of the emerging HL7&#174; FHIR&#174; specification. HL7 describes FHIR Change
Management and Versioning at [versions]('https://www.hl7.org/fhir/versions.html'>https://www.hl7.org/fhir/versions.html).
</p>
</div>


There is a set of profiles in IHE using the HL7 FHIR standard, including Patient Demographics Query for Mobile (PDQm),
Patient Identifier Cross-reference for Mobile (PIXm), and Mobile Health Document (MHD). These profiles define a
lightweight RESTful interface using technologies readily available to mobile applications and lightweight browser
based applications. There is some common explanation and profiling provided in this supplement as a new Appendix Z
and update of Appendix E in ITI Technical Framework Volume 2x.

## Open Issues and Questions

*   None

## Closed Issues

*   IHE Domain Coordination Committee is being asked to set policy that all IHE profiles will be using FHIR R4 by
    the end of 2019. Thus, IHE profiles are all using the same FHIR version.
*   Addressed CP-ITI-1059 Clarify optionality definitions in FHIR Appx Z
*   CP-ITI-1077 -- There appears to be a new way to encode an HL7 II in a URI. Found in ISO 21090 -- urn:hl7ii:{ROOT}[:{EXTENSION}].
    The HL7 community leadership is not showing support of this approach. The approach does help with round-trip of an II type
    identifier but brings along significant issues relative to query. IHE discussion have shown that it should not be used. Thus,
    the model defined in this Appendix Z supplement for handling HL7 II identifiers continues to be the accepted approach for IHE.
    Unclear if IHE should mention this approach, and then forbid it; or should just stay silent. Current text is silent, while
    having a clear recommendation.

## Appendix Z - FHIR Implementation Material

The HL7 FHIR standard has several overarching concepts, which should be profiled consistently throughout any mobile/lightweight
IHE transactions using FHIR. IHE profiles FHIR, like any other standard, in ways that narrow the standard for specific use-cases.
IHE profiles are intended to be proper subsets of the standard and are not intended to be incompatible.

We discuss here how IHE profiles the FHIR standard such as Resources, Datatypes, Valuesets, Extensions, Transactions, Query
Parameters, CapabilityStatement, etc.

**References**
<table border='1' style='border-collapse: collapse;'>
<thead><tr><th style='background-color: LightGray'>Standard</th>
<th style='background-color: LightGray'>Name</th></tr></thead>
<tbody>
<tr><td>HL7 FHIR</td><td><a href='http://www.hl7.org/fhir/R4/index.html'>HL7&#174; FHIR&#174; standard R4</a></td></tr>
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

<span id='Z1'> </span>
### Resource Bundles
Any operation that results in, or requires submission of, a collection of resources is done via a
Resource `Bundle` mechanism. A FHIR `Bundle` Resource is a collection of resources that are related,
for example, the result of a search operation, or a collection of historical versions of a resource.

Bundles are described at FHIR [Bundle](http://hl7.org/fhir/R4/bundle.html).

This section has no specific constraints.

<span id='Z2'> </span>
### Query Parameters
FHIR [Search](http://hl7.org/fhir/R4/search.html) specifies a series of query parameter types which may be
used when querying for a resource on a server. The representation of these query parameters
within the HTTP request URL are intended to support a broad set of use cases and in some cases
the behavior is unclear.

In this section, we discuss query parameters in the context of RESTful HTTP queries represented
in the request URL within IHE profiles.

Query parameters not mentioned here are not constrained by this appendix.

#### Query Parameter Modifiers
This section has no specific constraints.

#### Token Parameters
A token type is a parameter that provides an exact match search, either on a string of
characters, potentially scoped by a URI. It is mostly used against a code or identifier
data type where the value may have a URI that scopes its meaning, where the search is
performed against the pair from a Coding or an Identifier. Tokens are also used against
other fields where exact matches are required. (See FHIR [Search#token](http://hl7.org/fhir/R4/search.html#token).)

This section has no specific constraints.

#### String Parameters
For a simple string search, a string parameter serves as the input for a case- and
accent-insensitive search against sequences of characters. By default, a field matches
a string query if the value of the field equals or starts with the supplied parameter
value, after both have been normalized by case and accent. (See
FHIR [Search#string](http://hl7.org/fhir/R4/search.html#string).

IHE Profiles may choose to require support for the string search modifiers.

This section has no specific constraints.

<span id='Z3'> </span>
### CapabilityStatement Resource
HL7 FHIR defines how a service can declare a `CapabilityStatement` Resource describing
the resources, transport, formats, and operations that can be performed on a series of
resources for the service instance. The `CapabilityStatement` Resource is described in
FHIR [CapabilityStatement](http://hl7.org/fhir/R4/CapabilityStatement.html).

Actors providing http server functionality shall publish a `CapabilityStatement` on the
metadata endpoint as described in FHIR [HTTP#capabilities](http://hl7.org/fhir/R4/http.html#capabilities).

<span id='Z4'> </span>
### StructureDefinition Resource
HL7 FHIR allows service implementers to publish a `StructureDefinition` Resource describing
the constraints, terminology bindings, extensions and search parameters supported for a
resource type. This `StructureDefinition` Resource allows consumers to determine the capabilities
and data requirements of a particular FHIR-based service. The `StructureDefinition` Resource is
described in FHIR [StructuredDefinition](http://hl7.org/fhir/R4/structuredefinition.html).

This section has no specific constraints.

<span id='Z5'> </span>
### Resource Reference URIs in FHIR
Many of the defined elements in a resource are references to other resources. Using these
references, the resources combine to build relationships between information. Resource
References are described in FHIR [references](http://hl7.org/fhir/R4/references.html).

This section has no specific constraints.

### <span id='Z6'>Populating the Expected Response Format</Z6>
The FHIR standard provides for response message content encoded as either XML or JSON. The
server actor shall support both message encodings, whilst the client actors shall support
one and may optionally support both.

There are two methods for the client to indicate preference for encoding:

* the use of HTTP content negotiation and
* the `_format` query parameter

This is described in FHIR [HTTP#mime-type](http://hl7.org/fhir/R4/http.html#mime-type). The server actor
shall support both methods. Note that the value of the _format parameter must be a subset
of the HTTP content negotiation.

A client actor shall indicate preference for response format, using at least one method,
with at least one of the following values. A server actor may support other encodings.
To enable simpler query encoding, the value of `_format` may be the short "`json`" or "`xml`".

<table border='1' style='border-collapse: collapse'>
<thead><tr><th style='background-color: LightGray'>Desired Encoding</th>
<th style='background-color: LightGray'>mime-type Value</th></tr></thead>
<tbody>
<tr><td>json</td><td>application/fhir+json</td></tr>
<tr><td>xml</td><td>application/fhir+xml</td></tr>
</tbody>
</table>

<span id='Z7'> </span>
### Guidance on Access Denied Results
The server must choose the response carefully when an Access Denied condition exists. Returning too much
information may expose details that should not be communicated. The Access Denied condition might be because
of missing required Authentication, because the user is not authorized to access the endpoint, because the
user is not authorized to access specific data, or because of other policy reasons.

To balance usability of the response against appropriate disclosure, the actual result method used needs
to be controlled by policy and context.

Typical methods used are:

*   **Return a Success with Bundle containing zero results** - This result is indistinguishable from the case
where no data is known. When consistently returned on Access Denied, this approach will not expose which
patients exist, or what data might be blinded. This method is also consistent with cases where some results
are authorized while other results are excluded from the results. This can only be used when returning a
Bundle is a valid result.

*   **Return a 404 "Not Found"** - This approach also protects from data leakage, as it is indistinguishable
from a query against a resource that does not exist. It does however leak that the user is authenticated.

*   **Return a 403 "Forbidden"** - This approach communicates that the reason for the failure is an Authorization
failure. It should only be used when the client and/or user is trusted to be given this information. Thus,
this method is used mostly when the user is allowed to know that access is forbidden. It does not explain
how the user might change things to become authorized. This approach may leak that content exists.

*   **Return a 401 "Unauthorized"** - This communicates that user authentication was attempted and failed
to be authenticated. This approach may leak that content exists.

When the server needs to report an error, it shall use HTTP error response codes and should include
a FHIR OperationOutcome with more details on the failure. See
FHIR [Security#AccessDenied](http://hl7.org/fhir/R4/security.html#AccessDenied) and
[OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html)

<span id='Z8'> </span>
### Mobile Security Considerations

There are many security and privacy concerns with mobile devices, including lack of physical control.
Many common information technologies use of HTTP, including REST, access far less sensitive information
than health information. These factors present an especially difficult challenge for the security model.
Application developers should perform a Risk Assessment during design of their applications, and
organizations responsible for the operational environment should perform Risk Assessments on the
design and deployment of the operational environment. See
the [FHIR Security and Privacy Module](http://hl7.org/fhir/R4/secpriv-module.html).

Actors should not communicate any patient information unless proper authentication, authorization,
and communications security have been performed.

There are many reasonable methods of securing interoperability transactions. These security models
can be layered in without modifying the characteristics of the transaction. The use of TLS is
encouraged, specifically the use of the ATNA Profile. User authentication on mobile devices is
encouraged using Internet User Authorization (IUA) Profile. The IUA Profile is a profile of the
protocol. IUA enables external Authorization providers, which can leverage pluggable authentication
providers, such as OpenID Connect. The network communication security and user authentication are
layered in at the HTTP transport layer and do not modify the interoperability characteristics
defined in the transaction.

Security audit logging (e.g., ATNA) is recommended. Support for ATNA-based audit logging on the
mobile health device may be beyond the ability of the client-constrained environment. For example,
the client actor may only support HTTP interactions using JSON encoding, while the Record Audit
Event [ITI-20] transaction requires the SYSLOG protocol and XML encoding. For this reason, the
use of ATNA Audit Logging is not mandated. This means that the organization responsible for
the operational environment must choose how to mitigate the risk of relying only on the service
side audit logging.

Many transactions using HTTP REST will include query parameters that would be identifiers,
quasi-identifiers, or sensitive health topics. For example, it is common for patient identifier
to be a query parameter. With this URL pattern, the query parameters are typically visible
in the server audit log or browser history. The risk from this visibility should be mitigated
in system or operational design, by protecting the logs as sensitive data, or by designing
other measures into the system to prevent inappropriate exposure.

<span id='Z9'> </span>
### FHIR Data Types
This section includes specific guidance and constraints that are common to use of FHIR Data types.

#### Identifier Type
The HL7 FHIR standard uses the data type Identifier to express a business identifier that
uniquely identifies a thing or object (see FHIR
[Datatypes#identifier](http://hl7.org/fhir/R4/datatypes.html#identifier)
including document uniqueIds, medical record numbers or patient identifiers. This concept is different
than the resource identifier, known as "logical id" or "id" in FHIR, which identifies a
particular resource. (A resource identifier may also be represented as an Identifier instance however.)

The FHIR Identifier type introduces a new mechanism for conveying the originating system of a
particular identifier. Whereas HL7 Version 2 and Version 3 messages identify an assigning
organization as an HD (Hierarchical Descriptor) or an OID in the "root" attribute respectively,
HL7 FHIR requires the use of a URI. This may necessitate some configuration on the part of actors
in IHE profiles to correctly map between a URI and an OID or HD to maintain consistency with other
actors which are not implementing the FHIR specification.

Both the value and system shall be populated.

When the value is a globally unique value, the system value shall be "urn:ietf:rfc:3986".

A value that is an OID shall be represented as a URI with scheme "urn:oid:", for example:
```
{
"system": "urn:ietf:rfc:3986",
"value": "urn:oid:1.2.826.0.1.3680043.2.1611.1.2.32884.10619.27943.27629.41504"
}
```
A value that is a UUID shall be represented as a URI with a scheme "urn:uuid:", for example:
```
{
"system": "urn:ietf:rfc:3986",
"value": "urn:uuid:13cc6fc6-55ef-4dbc-a426-e0e82dffbe42"
}
```
##### Identifier and HL7 version 3 "root plus extension"
In HL7 version 3, uniqueId can be expressed as a root, or as a root plus extension.
When converting an HL7 version 3 uniqueId to FHIR, if no extension is provided, the root shall be placed into the Identifier.value, and the Identifier.system shall be set to "urn:ietf:rfc:3986". For example, the HL7 version 3 value
```
<identifier root="1.2.826.0.1.3680043.2.1611.1.2.32884.10619.27943.27629.41504" />
```

would be expressed in FHIR as
```
{
"system": "urn:ietf:rfc:3986",
"value": "urn:oid:1.2.826.0.1.3680043.2.1611.1.2.32884.10619.27943.27629.41504"
}
```
When an extension is provided, the extension shall be placed into the Identifier.value, and the Identifier.system shall be set to the root. For example, the HL7 version 3 value
```
<identifier root="1.2.826.0.1.3680043.2.1611.1.2.32884.10619.27943.27629.41504" extension="84566" />
```
would be expressed in FHIR as
```
{
"system": "urn:oid:1.2.826.0.1.3680043.2.1611.1.2.32884.10619.27943.27629.41504"
"value":"84566"
}
```
##### XDS CXi mapped to FHIR Identifier Type
In XDS, a subset of CX is defined as CXi.
The following mapping shall be used unless otherwise specified:
> CXi.1 (id) = Identifier.value
> CXi.4 (assigning authority) = Identifier.system
> CXi.5 (identifier type code) = Identifier.type
> CXi.6 (homeCommunityId) = <not mapped>
Thus, a CXi value such as
```
 2013001^^^&1.2.3.4.5.6&ISO^urn:ihe:iti:xds:2013:accession
```
would be expressed in FHIR as
```
<identifier>
    <type>
        <coding>
            <system value="urn:ietf:rfc:3986"/>
            <code value="urn:ihe:iti:xds:2013:accession"/>
        </coding>
    </type>
    <system value="urn:oid:1.2.3.4.5.6"/>
    <value value="2013001"/>
</identifier>
```
<span id='Z10'> </span>
### Profiling conventions for constraints on FHIR
The following terms refer to the values used in the OPT column of
tables in ITI Technical Framework Volumes 2, 3, and 4 that define
constraints being profiled:

R
:   Required. This element is required by FHIR. A sending application shall populate the
    element with a non-empty value. A receiving application may ignore the information
    conveyed by the element. A receiving application shall not raise an error solely due
    to the presence of the element but may raise an error due to the absence of the element.

R+
:   Required. This element is required by IHE profiling but is not a required element by
    FHIR. This element shall be treated as "R", above.

R2
:   Required if known. If the sending application has data for the element, it is required
    to populate the element with a non-empty value. If the value is not known, the element
    may be omitted. A receiving application may ignore the information conveyed by the element.
    A receiving application shall not raise an error solely due to the presence or absence of
    the element.

O
:   Optional. At its discretion, a sending application may populate the element with a
    non-empty value. A receiving application may ignore the information conveyed by the
    element. A receiving application shall not raise an error solely due to the presence
    or absence of the element.

C
:   Conditional. There is a stated condition associated with the element. When the condition
    is true, a sending application shall send the element.

X
:   Not supported. A sending application shall not populate the element. A receiving application
    may, if the element is received, ignore the information conveyed by the element, or may raise
    an error due to the presence of the element.

## Appendix E Usage of the CX Data Type in PID-3 Patient Identifier List
<div style='border: 1px solid black;'>
Add the following new section to the end of ITI TF-2x: Appendix E Usage of the CX Data Type in
PID-3 Patient Identifier List
</div>

<span id='E3'> </span>
### E.3 FHIR Identifier Type
The HL7 FHIR standard uses the data type Identifier to express a business identifier that uniquely
identifies a thing or object (see FHIR [Datatypes#identifier](http://hl7.org/fhir/R4/datatypes.html#identifier)
including medical record numbers or patient identifiers. See Appendix Z.9.1 for general guidance on FHIR
Identifier datatype. This concept is different than the resource identifier, known as "logical id"
or "id" in FHIR, which identifies a resource. (A resource identifier may also be represented as
an Identifier instance however.)

This section specifies how IHE profiles use the Identifier data type in FHIR resources.

IHE adds constraints to the Identifier data type; requirements for populating its elements vary slightly depending
on what actor is originating a transaction.

The FHIR Identifier type introduces a different mechanism for conveying the originating system of a particular
identifier. Whereas HL7 Version 2 and Version 3 messages identify an assigning organization as an HD
(Hierarchical Descriptor) or an OID in the "root" attribute, respectively, HL7 FHIR requires the use
of a URI. This may necessitate some configuration on the part of actors in IHE profiles to correctly
map between a URI and an OID, or HD to maintain consistency with other actors which are not implementing
the FHIR specification.

IHE imposes the following restrictions on the FHIR Identifier datatype for a Patient:

*   Both the value and system shall be populated. See [Appendix Z.9.1 Identifier Type](#Z9)

*   The assigner attribute may be populated (the name of the organization which assigned
    the identifier). When the assigning authority name is provided, the actor shall also
    populate the display attribute.

