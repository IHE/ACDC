# Introduction
The IHE Assessment Curation and Data Collection (ACDC) profile supports the selection
of assessment instruments from a repository and the integration of those instruments
into a provider workflow for the capture of assessment data for a given patient.

This implementation guide provides the FHIR Implementation materials associated with
this IHE profile.  This guide includes content from the IHE ACDC Profile Supplement,
however, the IHE published PDF content for this supplement is considered to be the
normative content.

## Overview
Assessments are the principle means by which numerous forms of data regarding physical function, mental/cognitive
status, social determinants of health, and patient reported outcomes are collected.  These are variously known as
assessments, screening instruments, scales, scores, questionnaires.

Many assessment instruments have been automated, but there are thousands of these instruments.  HealthMeasures
has nearly 750 measures, the Alcohol and Drug Abuse Institute at the University of Washington  lists over 1031
screening instruments, and a search of PubMed  results in nearly 26,000 articles on different instruments used
for patient assessment.

In the US, more than a half dozen quality improvement or recognition programs require documenting or reporting
specific information about patients that contain elements that can be obtained from health assessments . These
are shown in the figure below.

** Quality Related Assessments **
![Quality Related Assessments](../assets/images/QualityRelatedAssessments.png "Quality Related Assessments")

Many of these instruments can be implemented using technology, as they are simple forms or questionnaires.
Some data in these instruments might be automatically populated by the EHR system.  However, because there
are so many instruments, and so many providers of the instruments, it is challenging to integrate these
instruments into provider workflows.

### Use Cases

#### Finding an Assessment
In the first use case, a care provider organization is seeking information about assessment instruments to
address a specified condition or health concern.  Their goal is to identify instruments and eventually acquire
instruments which could be used to capture information essential to management of the care of patients having
that condition.  Their EHR will be able to perform the assessment once it has been acquired.

This use case is supported by the IHE PCC X1 Query Artifact transaction, and the IHE
PCC X2 Retrieve Artifact transaction.

#### Executing the Assessment Instrument
In the second use case, the care provider organization wants to assess a patient using the retrieved or
identified assessment in their health IT system and be able to collect the results of this assessment
for a given patient.  This process may be initiated through the users EHR, a separate application or
device, a patient portal, et cetera.

1.  The providers Health IT system can invoke a separate application that can interpret the assessment
    instrument and collect data on the patient, returning it to the health IT solution.

2.  A separate application can be launched either manually by the provider or through an integration
    method not specified by this guide.  This application will integrate with the providers Health IT
system to determine which assessment is to be performed, for which patient and which encounter.  It will
then collect the data and return it the EHR attached to the correct patient and encounter.

3.  The providers Health IT system can initiate data capture on its own forms, using the data describing
    the assessment instrument.  To implement this option, the health IT system needs to correctly interpret
    instrument description, collect the data and do what it deems necessary with the data that was collected
    (e.g., create observations or other resources, store a questionnaire response, et cetera).  Because this
    case can be completely managed by the providers Health IT system when the questionnaire items are
    provided, it is not addressed within this profile.

During the execution of this use case, the software performing the assessment may collect data already known
about the patient that is stored in the health IT system that will receive the assessment results.  When the
EHR Launch option is used, this data can be accessed via FHIR resources from the launching EHR system.

This use case is supported by the IHE PCC X3 Request Assessment transaction, and the IHE
PCC X4 Report Assessment transaction.

## Actors and Transactions

The IHE AC/DC Profile describes four actors, defined below:

Clinical Knowledge Resource Repository
: A Clinical Knowledge Resource Repository stores documents artifacts and metadata providing
regarding computable clinical knowledge and enables access to that information to requesters on demand.

Artifact Consumer
: The artifact consumer is a user-oriented application component that allows an end user (e.g.,
clinician, informaticist, interface engineer, et cetera) to explore clinical knowledge resources
available from a Clinical Knowledge Resource Repository.

Assessment Requestor
: The assessment requestor is an application component that needs assessment data and can request the
capture of assessment information from an assessor.

Assessor
: An assessor is a user-oriented application that allows a clinician, patient or other party to answer the
questions associated with an assessment instrument and obtain a completed response.

These actors participate in the following transactions:

Query Artifact [PCC-X1]
:   this transaction uses RESTful API to query assessment instruments that meet certain criteria, e.g., by
    topic, coded concern, procedure, clinical area, et cetera, retrieving the metadata essential to enable the
    consumer to determine if it wants to know more about the assessment instrument.

    The returned result would list the metadata associated with the various Questionnaire resources available
    but need not contain complete data on items in the instrument.

Request Artifact [PCC-X2]
:   this transaction uses RESTful API to requests the complete details of an Assessment Instrument in
    order to implement it for evaluation or production use.

Request Assessment [PCC-X3]
:   this transaction initiates an assessment.

Report Assessment [PCC-X4]
:   this transaction reports on the results of an assessment via a restful API.

The figure below depicts how these actors interact with each other through the IHE transactions
described above.

**Figure 2: Actor and Transaction Diagram for the ACDC Profile**
![IHE Actor and Transaction Diagram for the ACDC Profile](../assets/images/ActorsAndTransactions.png "IHE Actor and Transaction Diagram for the ACDC Profile")

### Clinical Knowledge Resource Repository
The Clinical Knowledge Resource Repository in this profile responds to FHIR-based queries for one or more clinical knowledge artifacts.

1. Given that a Clinical Knowledge Resource Repository provides an assessment instrument that a healthcare provider can use to assess a given condition or health concern, it must provide a mechanism by which that assessment can be performed on a given patient. This can be implemented in one of three ways:

    a. The Clinical Knowledge Resource Repository implements the Questionnaire Item Retrieval option, which enables the healthcare providers Health IT system to execute the assessment instrument with the Assessor of its choice, or

    b. The Clinical Knowledge Resource Repository implements the Assessor option; it must be grouped with an Assessor that the healthcare providers Health IT system can use to execute the assessment instrument.

    c. The Clinical Knowledge Resource Repository implements the EHR Launch Option.  It must also provide the Launch URL for the SMART on FHIR application that implements the accessor capabilities.

For each assessment instrument that can be accessed by a Clinical Knowledge Resource Repository, it must do at least one of the following:

1.  Provide the Questionnaire.item fields that can be used to implement the assessment.

2.  Provide at least one Launch URL for a SMART on FHIR application that performs the assessment.

3.  Demonstrate that the Assessor actor it is grouped with can be configured to perform the specified assessment with an
Assessment Requestor.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-clinicalknowledgerepository.html](acdc-actor-clinicalknowledgerepository.html)

### Artifact Consumer
The Artifact Consumer in this profile sends FHIR-based queries to the Clinical Knowledge Resource Repository to
search for and obtain one or more clinical knowledge artifacts.  Rendering and further processing of these artifacts
is defined by the Assessor and Assessment Requestor in this profile.

1.  Given that a user with appropriate permissions is operating the providers health IT system, when a new assessment
instrument is needed, then the user can locate an appropriate assessment instrument, and configure that health IT system
to use it to capture an assessment.

2.  A healthcare providers health IT system must be able to support assessments from a Clinical Knowledge Resource
Repository that implements the Questionnaire Retrieval Option.

3.  A healthcare providers health IT system must be able to support assessments from a Clinical Knowledge Resource
Repository that implements the Assessor Option.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-clinicalknowledgerepository.html](acdc-actor-clinicalknowledgerepository.html)

### Assessor
The Assessor in this profile performs an assessment and reports the results as a QuestionnaireResponse to the appropriate
patient and encounter. It must populate the QuestionnaireResponse resource with the appropriate references to the subject,
encounter, author and questionnaire resources.  The subject, encounter, and author resources must be obtained from the
current context of the Assessor actor.  The questionnaire resource should be represented by the canonical url which
uniquely identifies the assessment instrument.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-assessor.html](acdc-actor-clinicalknowledgerepository.html)

### Assessment Requestor
The Assessment Requestor in this profile requests an assessment of an assessor and processes results returned in a
QuestionnaireResponse resource.  It must accept an assessment as a QuestionnaireResponse resource from the Assessor actor.

An example CapabilityStatement resource for this actor can be found at [acdc-actor-assessorrequestor.html](acdc-actor-clinicalknowledgerepository.html)

## Profile Options
This profile provides three options:

### Questionnaire Item Retrieval Option
The Questionnaire Item Retrieval option enables systems to interpret the content of the returned Questionnaire
resources using their own Questionnaire handling interface.

A Clinical Knowledge Resource Repository that implements the Questionnaire Item Retrieval Option shall include
the necessary information in Questionnaire.item fields in the returned Questionnaire resource to enable execution
of the assessment instrument.

### Assessor Option
The Assessor Option enables a Clinical Knowledge Repository to provide Assessment capabilities for applications
which cannot provide their user interface to implement the user interactions described by the Questionnaire resource.

A Clinical Knowledge Resource Repository that implements the Assessor Option shall be grouped with an
Assessor actor that is able to perform the assessments it provides.

### EHR Launch Option
The EHR Launch Option allows assessments to be performed using the SMART on FHIR EHR Launch workflow from
the providers EHR system.

#### EHR Launch Requirements on Clinical Knowledge Resource Repository
A Clinical Knowledge Resource Repository that implements the EHR Launch Option shall include at least one
launch-url extension in Questionnaire resources to tell the receiver how to launch a SMART on FHIR application
that will implement the assessment.  That assessor must implement the FHIR EHR Launch Option.

#### EHR Launch Requirements on Assessment Requestor
An Assessment Requestor that implements the EHR Launch option shall initiate a SMART on FHIR EHR Launch protocol
via the launch url associated with the assessment.

#### EHR Launch Requirements on Assessor
An Assessor that implements the EHR Launch option supports initiation of the assessment via the SMART on FHIR EHR
Launch protocol and allows specification of the canonical url of the Questionnaire resource in the def parameter
of the launch url.

## Security Considerations
See
[ITI TF-2.x Appendix Z.8 "Mobile Security Considerations"](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=9
"Mobile Security Considerations") for general background on "Mobile" security considerations, and recommendations regarding security.

The ACDC profile provides an API for accessing data element level details that are identifiable to a specific patient. All the data
communicated, including the query parameters, should be considered patient identifiable information (PII). Assessments may also
include information protected about other individuals and should be considered individually identifiable information (III).  The
grouping with IUA, or some similar user authentication and authorization solution, is critical for enforcing privacy and security
requirements. All accesses to this data should be recorded as audit log for security surveillance and privacy reporting. These
topics are discussed in Appendix Z.8 with recommendations.

Some data being exchanged in this profile represent the execution of an assessment, a validated instrument, for a patient.  The data
 in this can affect decision treatments, and so may need additional protection against data integrity and data authenticity risks.
 To mitigate data integrity and data authenticity risks, the Assessor may include a questionnaireresponse-signature  extension on
 the QuestionnaireResponse, or on selected QuestionnaireResponse.item elements.

Assessment instruments are intellectual property which owners may wish to protect in various ways, e.g., licensing agreements,
copyright restrictions, et cetera.  As such the content of the assessment instrument should be encrypted during exchange.
Accessors of assessment instruments may need to authenticate themselves in some way before being able to access assessment
instruments.  Access to specific assessment instrument content that may be implemented by a user can have financial or
contractual ramifications for that user (e.g., incur charges), and should therefore be logged by both the owner and receiver
of the content.

A Health IT system that is configured to support a new assessment instrument has had a significant change in functionality
that should be logged.

This profile makes use of the SMART on FHIR EHR Launch protocol, and some implementations may also use the SMART on FHIR
Standalone Launch protocol.  Use of these protocols relies on OAuth2, HTTPS and TLS communications, ensuring authentication,
authorization and encryption during exchanges involving PHI or III.

