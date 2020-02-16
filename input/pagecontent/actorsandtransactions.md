### Actors and Transactions

The IHE AC/DC Profile describes four actors, defined below:

Clinical Knowledge Resource Repository
: A Clinical Knowledge Resource Repository stores documents artifacts and metadata providing
regarding computable clinical knowledge and enables access to that information to requesters on demand.

Artifact Consumer
: The Artifact Consumer is a user-oriented application component that allows an end user (e.g.,
clinician, informaticist, interface engineer, et cetera) to explore clinical knowledge resources
available from a Clinical Knowledge Resource Repository.

Assessment Requester
: The Assessment Requester is an application component that needs assessment data and can request the
capture of assessment information from an assessor.

Assessor
: An Assessor is a user-oriented application that allows a clinician, patient or other party to answer the
questions associated with an assessment instrument and obtain a completed response.

These actors participate in the following transactions:

<a name='pcc-x1'> </a> Query Artifact [PCC-X1]
:   The Query Artifact transaction uses RESTful API to query assessment instruments that meet certain criteria, e.g., by
    topic, coded concern, procedure, clinical area, et cetera, retrieving the metadata essential to enable the
    consumer to determine if it wants to know more about the assessment instrument.

    The returned result would list the metadata associated with the various Questionnaire resources available
    but need not contain complete data on items in the instrument.  The returned Questionnaire resources conform
    to the [ACDC Questionaire FHIR Resource profile](ihe-acdc-questionnaire.html).

<a name='pcc-x2'> </a> Request Artifact [PCC-X2]
:   The Request Artifact transaction uses RESTful API to requests the complete details of an Assessment Instrument in
    order to implement it for evaluation or production use. The returned Questionnaire conforms to
    the [ACDC Questionaire FHIR Resource profile](ihe-acdc-questionnaire.html).


<a name='pcc-x3'> </a> Request Assessment [PCC-X3]
:   The Request Assessment transaction initiates an assessment described in a Questionnaire conforming to the
    [ACDC Questionaire FHIR Resource profile](ihe-acdc-questionnaire.html).

<a name='pcc-x4'> </a> Report Assessment [PCC-X4]
:   The Report Assessment transaction reports on the results of an assessment via a restful API.
    The returned QuestionnaireResponse resource conforms to
    the [ACDC QuestionaireResponse FHIR Resource profile](ihe-acdc-questionnaireresponse.html).

The figure below depicts how these actors interact with each other through the IHE transactions
described above.

**Figure 2: Actor and Transaction Diagram for the ACDC Profile**

![IHE Actor and Transaction Diagram for the ACDC Profile](ActorsAndTransactions.png "IHE Actor and Transaction Diagram for the ACDC Profile")
<div style="clear: left"/>

#### Clinical Knowledge Resource Repository
The Clinical Knowledge Resource Repository in this profile responds to FHIR-based queries for one or more clinical knowledge artifacts.

1. Given that a Clinical Knowledge Resource Repository provides an assessment instrument that a healthcare provider can use to assess a given condition or health concern, it must provide a mechanism by which that assessment can be performed on a given patient. This can be implemented in one of three ways:

    a. The Clinical Knowledge Resource Repository implements the [Questionnaire Item Retrieval option](profileoptions.html#item-option), which enables the healthcare providers Health IT system to execute the assessment instrument with the Assessor of its choice, or

    b. The Clinical Knowledge Resource Repository implements the [Assessor option](profileoptions.html#assessor-option); it must be grouped with an Assessor that the healthcare providers Health IT system can use to execute the assessment instrument.

    c. The Clinical Knowledge Resource Repository implements the [EHR Launch](profileoptions.html#ehrlaunch-option) Option.  It must also provide the Launch URL for the SMART on FHIR application that implements the accessor capabilities.

For each assessment instrument that can be accessed by a Clinical Knowledge Resource Repository, it must do at least one of the following:

1.  Provide the Questionnaire.item fields that can be used to implement the assessment.

2.  Provide at least one Launch URL for a SMART on FHIR application that performs the assessment.

3.  Demonstrate that the Assessor actor it is grouped with can be configured to perform the specified assessment with an
Assessment Requester.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-clinicalknowledgerepository.html](acdc-actor-clinicalknowledgerepository.html)

#### Artifact Consumer
The Artifact Consumer in this profile sends FHIR-based queries to the Clinical Knowledge Resource Repository to
search for and obtain one or more clinical knowledge artifacts.  Rendering and further processing of these artifacts
is defined by the Assessor and Assessment Requester in this profile.

1.  Given that a user with appropriate permissions is operating the providers health IT system, when a new assessment
instrument is needed, then the user can locate an appropriate assessment instrument, and configure that health IT system
to use it to capture an assessment.

2.  A healthcare providers health IT system must be able to support assessments from a Clinical Knowledge Resource
Repository that implements the [Questionnaire Item Retrieval Option](profileoptions.html#item-option).

3.  A healthcare providers health IT system must be able to support assessments from a Clinical Knowledge Resource
Repository that implements the [Assessor Option](profileoptions.html#assessor-option).

An example CapabilityStatement resource for this actor can be found at [acdc-actor-clinicalknowledgerepository.html](acdc-actor-clinicalknowledgerepository.html)

#### Assessor
The Assessor in this profile performs an assessment and reports the results as a QuestionnaireResponse to the appropriate
patient and encounter.

1. It must populate the QuestionnaireResponse resource with the appropriate references to the subject,
encounter, author and questionnaire resources.

2. The subject, encounter, and author resources must be obtained from the
current context of the Assessor actor.

3. The questionnaire resource must be represented by the canonical url which
uniquely identifies the assessment instrument.

4. The assessor should audit the export of the QuestionnaireResponse resource to the
Assessment Requester actor.

5. The assessor may include a copy of the Questionnaire Resource used
during the assessment.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-assessor.html](acdc-actor-assessor.html)

#### Assessment Requester
The Assessment Requester in this profile requests an assessment of an assessor and processes results returned in a
QuestionnaireResponse resource.

1. It must accept an assessment as a QuestionnaireResponse resource from the Assessor actor.

2. The Assessment Requester shall record the import of the QuestionnaireResponse in the audit log.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-assessorrequestor.html](acdc-actor-assessorrequestor.html)
