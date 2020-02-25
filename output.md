**Integrating the Healthcare Enterprise**

![](media/image1.jpeg)

**IHE PCC**

**Technical Framework Supplement**

**Assessment Curation and Data Collection (ACDC)**

HL7<sup>Â®</sup> FHIR<sup>Â®</sup> STU 4

Using Resources at FMM Levels 3

**Rev. 1.0 â€“ Draft for Public Comment**

Date: February 19, 2020

Author: IHE PCC Technical Committee

Email: <pcc@ihe.net>

**Please verify you have the most recent version of this document.** See
[here](http://ihe.net/Technical_Frameworks/) for Trial Implementation
and Final Text versions and [here](http://ihe.net/Public_Comment/) for
Public Comment versions.

**Foreword**

This is a supplement to the IHE Patient Care Coordination Technical
Framework V11.0. Each supplement undergoes a process of public comment
and trial implementation before being incorporated into the volumes of
the Technical Frameworks.

This supplement is published on April 27, 2019 for public comment.
Comments are invited and can be submitted at
[http://www.ihe.net/PCC\_Public\_Comments](http://www.ihe.net/PCC_Public_Comments/).
In order to be considered in development of the trial implementation
version of the supplement, comments must be received by June 25, 2019.

This supplement describes changes to the existing technical framework
documents.

â€œBoxedâ€� instructions like the sample below indicate to the Volume Editor
how to integrate the relevant section(s) into the relevant Technical
Framework volume.

Amend Section X.X by the following:

Where the amendment adds text, make the added text
**<span class="underline">bold underline</span>**. Where the amendment
removes text, make the removed text **<s>bold strikethrough</s>**. When
entire new sections are added, introduce with editorâ€™s instructions to
â€œadd new textâ€� or similar, which for readability are not bolded or
underlined.

General information about IHE can be found at
[http://ihe.net](http://ihe.net/).

Information about the IHE Patient Care Coordination domain can be found
at [http://ihe.net/IHE\_Domains](http://ihe.net/IHE_Domains/).

Information about the organization of IHE Technical Frameworks and
Supplements and the process used to create them can be found at
[http://ihe.net/IHE\_Process](http://ihe.net/IHE_Process/) and
[http://ihe.net/Profiles](http://ihe.net/Profiles/).

The current version of the IHE Patient Care Coordination Technical
Framework can be found at
[http://ihe.net/Technical\_Frameworks](http://ihe.net/Technical_Frameworks/).

CONTENTS

[Introduction to this Supplement 6](#introduction-to-this-supplement)

[Open Issues and Questions 7](#open-issues-and-questions)

[Closed Issues 7](#closed-issues)

[General Introduction 9](#general-introduction)

[Appendix A â€“ Actor Summary Definitions
9](#appendix-a-actor-summary-definitions)

[Appendix B â€“ Transaction Summary Definitions
9](#appendix-b-transaction-summary-definitions)

[Glossary 9](#glossary)

[Volume 1 â€“ Profiles 11](#_Toc7624172)

[Copyright Licenses 11](#copyright-licenses)

[15 Assessment Curation and Data Collection (ACDC) Profile
11](#assessment-curation-and-data-collection-acdc-profile)

[15.1 ACDC Actors, Transactions and Content Modules
12](#acdc-actors-transactions-and-content-modules)

[15.1.1 Actor Descriptions and Actor Profile Requirements
13](#actor-descriptions-and-actor-profile-requirements)

[15.1.1.1 Clinical Knowledge Resource Repository
13](#clinical-knowledge-resource-repository)

[15.1.1.2 Artifact Consumer 13](#artifact-consumer)

[15.1.1.3 Assessor 14](#assessor)

[15.1.1.4 Assessment Requestor 14](#assessment-requestor)

[15.2 ACDC Actor Options 14](#acdc-actor-options)

[15.2.1 Questionnaire Item Retrieval Option
14](#questionnaire-item-retrieval-option)

[15.2.1.1 Clinical Knowledge Resource Repository
15](#clinical-knowledge-resource-repository-1)

[15.2.2 Assessor Option 15](#assessor-option)

[15.2.3 EHR Launch Option 15](#ehr-launch-option)

[15.2.3.1 EHR Launch Requirements on Clinical Knowledge Resource
Repository
15](#ehr-launch-requirements-on-clinical-knowledge-resource-repository)

[15.2.3.2 EHR Launch Requirements on Assessment Requester
15](#ehr-launch-requirements-on-assessment-requester)

[15.2.3.3 EHR Launch Requirements on Assessor
15](#ehr-launch-requirements-on-assessor)

[15.3 ACDC Required Actor Groupings 15](#acdc-required-actor-groupings)

[15.4 ACDC Overview 16](#acdc-overview)

[15.4.1 Concepts 16](#concepts)

[15.4.1.1 Use of Assessment Instrument Results
19](#use-of-assessment-instrument-results)

[15.4.2 Use Cases 20](#use-cases)

[15.4.2.1 Use Case \#1: Finding an Assessment Instrument
20](#use-case-1-finding-an-assessment-instrument)

[15.4.2.1.1 Use Case \#1 Description 20](#use-case-1-description)

[15.4.2.1.2 Use Case \#1 Process Flow 21](#use-case-1-process-flow)

[15.4.2.2 Use Case \#2: Executing the Assessment Instrument
21](#use-case-2-executing-the-assessment-instrument)

[15.4.2.2.1 Use Case \#2 Description 21](#use-case-2-description)

[15.4.2.2.2 Use Case \#2 **Process Flows**
22](#use-case-2-process-flows)

[15.5 ACDC Security Considerations 23](#acdc-security-considerations)

[15.6 ACDC Cross Profile Considerations
24](#acdc-cross-profile-considerations)

[15.6.1 PCC QEDm â€“ Query for Existing Data for Mobile
24](#pcc-qedm-query-for-existing-data-for-mobile)

[**15.6.2 ITI PDQm** â€“ Patient Demographics Query for Mobile
24](#iti-pdqm-patient-demographics-query-for-mobile)

[**15.6.3 ITI ATNA** â€“ Audit Trail and Node Authentication
25](#iti-atna-audit-trail-and-node-authentication)

[Volume 2 â€“ Transactions 26](#_Toc345074671)

[3.71 Query Artifact \[PCC-71\] 26](#query-artifact-pcc-71)

[3.71.1 Scope 26](#scope)

[3.71.2 Actor Roles 26](#actor-roles)

[3.71.3 Referenced Standards 27](#_Toc33048099)

[3.71.4 Interaction Diagram 27](#interaction-diagram)

[3.71.4.1 Search Artifact Request message
28](#search-artifact-request-message)

[3.71.4.1.1 Trigger Events 28](#trigger-events)

[3.71.4.1.2 Message Semantics 28](#message-semantics)

[3.71.4.1.2.1 Search Parameters 28](#search-parameters)

[3.71.4.1.2.2 Populating Expected Response Format 29](#_Toc33048105)

[3.71.4.1.3 Expected Actions 29](#expected-actions)

[3.71.4.2.2.2 Resource Bundling 30](#resource-bundling)

[3.71.5 Read Artifact Request message
30](#read-artifact-request-message)

[3.71.4.1.1 Trigger Events 30](#trigger-events-1)

[3.71.4.1.2 Message Semantics 30](#message-semantics-1)

[3.71.4.1.2.2 Populating Expected Response Format
30](#populating-expected-response-format-1)

[3.71.4.1.3 Expected Actions 31](#expected-actions-1)

[3.71.4.3 Capability Statement Resource
31](#capability-statement-resource)

[3.71.5 Security Considerations 31](#security-considerations)

[3.71.5.1 Security Audit Considerations
31](#security-audit-considerations)

[3.72 Request Assessment \[PCC-72\] 33](#request-assessment-pcc-72)

[3.72.1 Scope 33](#scope-1)

[3.72.2 Actor Roles 33](#actor-roles-1)

[3.72.3 Referenced Standards 34](#referenced-standards-1)

[3.72.4 Interaction Diagram 34](#interaction-diagram-1)

[3.72.4.1 Establish Context message 34](#establish-context-message)

[3.72.4.1.1 Trigger Events 34](#trigger-events-2)

[3.72.4.1.2 Message Semantics 35](#message-semantics-2)

[3.72.4.1.3 Expected Actions 35](#expected-actions-2)

[3.72.4.2 Assess Patient Activity message
35](#assess-patient-activity-message)

[3.72.4.2.1 Trigger Events 35](#trigger-events-3)

[3.72.4.2.2 Semantics 35](#semantics)

[3.72.4.2.3 Expected Actions 35](#expected-actions-3)

[3.72.4.4 Capability Statement Resource
36](#capability-statement-resource-1)

[3.72.5 Security Considerations 36](#security-considerations-1)

[3.72.5.1 Security Audit Considerations
36](#security-audit-considerations-1)

[3.73 Report Assessment \[PCC-73\] 38](#report-assessment-pcc-73)

[3.73.1 Scope 38](#scope-2)

[3.73.2 Actor Roles 38](#actor-roles-2)

[3.73.3 Referenced Standards 39](#referenced-standards-2)

[3.73.4 Interaction Diagram 39](#interaction-diagram-2)

[3.73.4.1 Create Assessment message 39](#create-assessment-message)

[3.73.4.1.1 Trigger Events 39](#trigger-events-4)

[3.73.4.1.2 Message Semantics 39](#message-semantics-3)

[3.73.4.1.3 Expected Actions 40](#expected-actions-4)

[3.73.4.1 Update Assessment message 41](#update-assessment-message)

[3.73.4.1.1 Trigger Events 41](#trigger-events-5)

[3.73.4.1.2 Message Semantics 41](#message-semantics-4)

[3.73.4.1.3 Expected Actions 41](#expected-actions-5)

[3.73.5 Capability Statement Resource
42](#capability-statement-resource-2)

[3.73.6 Security Considerations 42](#security-considerations-2)

[3.73.6.1 Security Audit Considerations
42](#security-audit-considerations-2)

[Volume 3 â€“ Content Modules 44](#_Toc7624261)

[**6.6 HL7 FHIR Content Modules** 44](#hl7-fhir-content-modules)

[**6.6.107.1 Questionnaire** 44](#questionnaire)

[**6.6.108.1 QuestionnaireResponse** 45](#questionnaireresponse)

[6.7.3 Launch URL Extension 46](#launch-url-extension)

[6.7.4 Contained Questionnaire Reference Extension
46](#contained-questionnaire-reference-extension)

#
Introduction to this Supplement

<table>
<tbody>
<tr class="odd">
<td><p>Whenever possible, IHE profiles are based on established and stable underlying standards. However, if an IHE committee determines that an emerging standard offers significant benefits for the use cases it is attempting to address and has a high likelihood of industry adoption, it may develop IHE profiles and related specifications based on such a standard.</p>
<p>The IHE committee will take care to update and republish the IHE profile in question as the underlying standard evolves. Updates to the profile or its underlying standards may necessitate changes to product implementations and site deployments for them to remain interoperable and conformant with the profile in question.</p>
<p>This Technical Framework Supplement uses the emerging HL7<sup>Â®</sup>[1] FHIR<sup>Â®</sup>[2] specification. The FHIR release profiled in this supplement is R4. HL7 describes the STU (Standard for Trial Use) standardization state at <a href="https://www.hl7.org/fhir/versions.html"><span class="underline">https://www.hl7.org/fhir/versions.html</span>.</a></p>
<p>In addition, HL7 provides a rating of the maturity of FHIR content based on the FHIR Maturity Model (FMM): level 0 (draft) through 5 (normative ballot ready).The FHIR Maturity Model is described at <a href="http://hl7.org/fhir/versions.html#maturity"><span class="underline">http://hl7.org/fhir/versions.html#maturity</span>.</a></p>
<p>Key FHIR Release 4 content, such as Resources or ValueSets, used in this profile, and their FMM levels are on February 20<sup>th</sup>, 2020</p>
<table border="1" style="border: 1px solid black; bordercollapse: collapse">
<thead>
<tr class="header">
<th>FHIR Resource Name</th>
<th>FMM Level</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Questionnaire</td>
<td>3</td>
</tr>
<tr class="even">
<td>QuestionnaireResponse</td>
<td>3</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

The IHE Assessment Curation and Data Collection (ACDC) profile supports
the selection of assessment instruments from a repository and the
integration of those instruments into a provider workflow for the
capture of assessment data for a given patient.

## Open Issues and Questions

## Closed Issues

1.  We seek feedback on the need to be able to update the results from
    an assessment. How, for example, should the system operate in cases
    where the assessment needs to be performed again to correct an error
    in input? How would we address privacy and security concerns related
    to update. Call out auth/access control issues out of scope?
    The profile allows assessment results to be updated. It is up to the
    system to determine

2.  Should PCC-71 and PCC-X2 be collapsed into a single transaction that
    can be used for multiple purposes (finding a resource and acquiring
    it)? The reason for separating them at this time is that PCC-X2
    contains the assessment IP, which may require licensing of the
    content, and we felt that it was appropriate to keep this as a
    separate transaction. However, we seek feedback from assessment
    implementors on whether there are other ways this could be addressed
    to simplify this profile.

3.  We seek feedback on storage of assessment content (see section
    15.4.1.1) and use of the FHIR create operation in PCC-72 to â€œreturnâ€�
    the results of the assessment instrument. Are these mechanisms
    acceptable to implementers?

4.  The IHE QRPH Structured Data Capture (SDC) profile addresses the
    definition of forms that can be used to fill out questionnaires,
    typically for collecting data for registries. This profile overlaps
    with that one. We seek feedback on how we should address this
    overlap.

5.  Is assessment an option, in that it describes the type of resource
    returned from the knowledge repository? This anticipates retrieval
    of other definitional artifacts (i.e., care plan definition) from
    the clinical knowledge resource repository.

    For now, assessment isnâ€™t an option of this profile, though we might
    make it one in the future to support access to other definitional
    resources (e.g., CarePlanDefinition).

6.  How should we address authentication / authorization to a) access
    the repository, and obtain a resource for implementation? Ideally
    this would allow for use of bearer tokens after authorization to
    enable repositories to be compatible with SMART on FHIR (SoF).
    Considerations: Questionnaires are not patient specific resources,
    so patient/Questionnaire.read is NOT a useful scope. It should be
    user/Questionnaire.read. What scope would distinguish between search
    and acquire permissions? Is that outside of the scope of this
    profile? That would only be a minor challenge, I think b/c user
    access controls could enforce user capabilities.

    The profile will require user authentication/authorization but will
    not specify details.

7.  How do we handle provenance for QuestionnaireResponse resources? Is
    that the responsibility of the assessor or the assessment requestor?
    It would seem to be the responsibility of the latter, b/c we do not
    actually say what is done with the responses. They could be
    persisted, or they could be stored as individual observation
    resources, et cetera, itâ€™s up to the requestor to determine what to
    do with the data and how to associate it with provenance.

    Provenance is challenging b/c the Assessor actor is requesting the
    creation of the resource, and the AssessmentRequestor is responsible
    for creating/storing it. Often, the information system responsible
    for storage manages provenance and audit resources, preventing
    clients from being able to create Provenance resources. However, HL7
    has defined an extension on the QuestionnaireResponse resource which
    enables the Assessor to provide a digital signature of the response,
    enabling validation of the integrity of the assessment content, and
    so we need not say anything about Provenance resources, but should
    discuss the signature extension.

8.  Do we want repositories to be able to implement assessment logic for
    an instrument and return the QuestionnaireResponse? In this case,
    how is the interaction triggered? Yes, this case needs to be
    supported for some Clinical Knowledge Resource Repositories. We have
    provided an option and a Clinical Knowledge Resource Repositories to
    reflect the use of a grouped Assessor.

9.  Should there be an option for EHR Launch/Standalone Launch? I think
    yes, b/c there are some cases where assessment instruments can be
    executed using separate hardware (i.e., an iPad) that may need to
    â€œlog inâ€� to the EHR and be assigned to a given patient being seen,
    whereas there may be other cases where the EHR may simply launch a
    web page somewhere (in a similar scenario, the EHR application is
    running in a browser on the iPad and does the launch in its own UI).

> We have defined an EHR Launch option which defines the launch
> parameter identifying the assessment to be performed.

10. ATNA requirements. Questionnaires are not PHI, but they are IP. Do
    we need to protect transactions using Questionnaire with ATNA? Do we
    require, or simply recommend ATNA? I think we adopt RESTful ATNA
    related requirements re: Authentication, encryption and logging, but
    do not require ATNA completely b/c FHIR already has Audit Event,
    which is based on ATNA, and we are using SoF standalone and EHR
    Launch, which enforces encryption and authentication requirements,
    so they only thing we need to add is a logging requirement.

    Per joint meeting, we have referred to Section 8 of Appendix Z in
    the ITI Technical Framework.

# General Introduction

Update the following Appendices to the General Introduction as indicated
below. Note that these are not appendices to Volume 1.

# Appendix A â€“ Actor Summary Definitions

Add the following actors to the IHE Technical Frameworks General
Introduction list of actors:

<table>
<thead>
<tr class="header">
<th>Actor</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Clinical Knowledge Resource Repository</td>
<td>A Clinical Knowledge Resource Repository stores <del>documents</del> <span class="underline">artifacts and metadata</span> <del>providing</del> <span class="underline">regarding</span> <span class="underline">computable</span> clinical knowledge and enables access to that information to requesters <del>on demand</del>.</td>
</tr>
<tr class="even">
<td>Artifact Consumer</td>
<td>The artifact consumer is a user-oriented application component that allows an end user (e.g., clinician, informaticist, interface engineer, et cetera) to explore clinical knowledge resources available from a Clinical Knowledge Resource Repository.</td>
</tr>
<tr class="odd">
<td>Assessment Requestor</td>
<td>The Assessment Requester is an application component that needs assessment data and can request the capture of assessment information from an assessor.</td>
</tr>
<tr class="even">
<td>Assessor</td>
<td>An assessor is a user-oriented application that allows a clinician, patient or other party to answer the questions associated with an assessment instrument and obtain a completed response.</td>
</tr>
</tbody>
</table>

# Appendix B â€“ Transaction Summary Definitions

Add the following transactions to the IHE Technical Frameworks General
Introduction list of Transactions:

***Query Artifact \[PCC-71\]*** â€“ this transaction enables systems to
query assessment instruments that meet certain criteria, e.g., by topic,
coded concern, procedure, clinical area, et cetera, retrieving the
metadata essential to enable the consumer to determine if it wants to
know more about the assessment instrument, and to retrieve the
assessment instrument.

***Request Assessment \[PCC-72\]* â€“**this transaction establishes the
context for, and initiates an assessment for a given patient.

***Report Assessment \[PCC-73\]* â€“**this transaction reports on the
results of an assessment of a given patient via a restful API.

# Glossary

Add the following glossary terms to the IHE Technical Frameworks General
Introduction Glossary:

No new terms added.

<span id="_Toc7624172" class="anchor"></span>Volume 1 â€“ Profiles

## Copyright Licenses

Add the following to the IHE Technical Frameworks General Introduction
Copyright section:

No new copyright licenses added.

Add new Section 15

# 15 Assessment Curation and Data Collection (ACDC) Profile

The Assessment Curation and Data Collection (ACDC) supports the
selection of assessment instruments from a repository and the
integration of those instruments into a provider workflow for the
capture of the assessment data.

## 15.1 ACDC Actors, Transactions and Content Modules

This section defines the actors, transactions, and/or content modules in
this profile. General definitions of actors are given in the Technical
Frameworks General Introduction Appendix A at
<http://www.ihe.net/Technical_Framework/index.cfm>.

Figure 15.1-1 shows the actors directly involved in the ACDC Profile and
the relevant transaction between them.

Figure 15.1-1: ACDC Actor Diagram

Table 15.1-1 lists the transactions for each actor directly involved in
the ACDC Profile. To claim compliance with this profile, an actor shall
support all required transactions (labeled â€œRâ€�) and may support the
optional transactions (labeled â€œOâ€�).

Table 15.1-1: ACDC Integration Profile - Actors and Transactions

<table>
<tbody>
<tr class="odd">
<td>Actors</td>
<td>Transactions</td>
<td>Optionality</td>
<td>Reference</td>
</tr>
<tr class="even">
<td>Clinical Knowledge Resource Repository</td>
<td>Query Artifact [PCC-71]</td>
<td>R</td>
<td>PCC TF-2: 3.71</td>
</tr>
<tr class="odd">
<td>Artifact Consumer</td>
<td>Query Artifact [PCC-71]</td>
<td>R</td>
<td>PCC TF-2: 3.71</td>
</tr>
<tr class="even">
<td>Assessor</td>
<td>Request Assessment [PCC-72]</td>
<td>R</td>
<td>PCC TF-2: 3.72</td>
</tr>
<tr class="odd">
<td></td>
<td>Report Assessment [PCC-73]</td>
<td>R</td>
<td>PCC TF-2: 3.73</td>
</tr>
<tr class="even">
<td>Assessment Requestor</td>
<td>Request Assessment [PCC-72]</td>
<td>R</td>
<td>PCC TF-2: 3.72</td>
</tr>
<tr class="odd">
<td></td>
<td>Report Assessment [PCC-73]</td>
<td>R</td>
<td>PCC TF-2: 3.73</td>
</tr>
</tbody>
</table>

### 15.1.1 Actor Descriptions and Actor Profile Requirements

#### 15.1.1.1 Clinical Knowledge Resource Repository

The Clinical Knowledge Resource Repository in this profile responds to
FHIR-based queries for one or more clinical knowledge artifacts.

1.  Given that a Clinical Knowledge Resource Repository provides an
    assessment instrument that a healthcare provider can use to assess a
    given condition or health concern, it must provide a mechanism by
    which that assessment can be performed on a given patient. This can
    be implemented in one of three ways:

    1.  The Clinical Knowledge Resource Repository implements the
        Questionnaire Item Retrieval option, which enables the
        healthcare providerâ€™s Health IT system to execute the assessment
        instrument with the Assessor of its choice, or

    2.  The Clinical Knowledge Resource Repository implements the
        Assessor option; it must be grouped with an Assessor that the
        healthcare providerâ€™s Health IT system can use to execute the
        assessment instrument.

    3.  The Clinical Knowledge Resource Repository implements the EHR
        Launch Option. It must also provide the Launch URL for the SMART
        on FHIR application that implements the accessor capabilities.

For each assessment instrument that can be accessed by a Clinical
Knowledge Resource Repository, it must do at least one of the following:

1.  Provide the Questionnaire.item fields that can be used to implement
    the assessment.

2.  Provide at least one Launch URL for a SMART on FHIR application that
    performs the assessment.

3.  Demonstrate that the Assessor actor it is grouped with can be
    configured to perform the specified assessment with an Assessment
    Requestor.

#### 15.1.1.2 Artifact Consumer

The Artifact Consumer in this profile sends FHIR-based queries to the
Clinical Knowledge Resource Repository to search for and obtain one or
more clinical knowledge artifacts. Rendering and further processing of
these artifacts is defined by the Assessor and Assessment Requester in
this profile.

1.  Given that a user with appropriate permissions is operating the
    providerâ€™s health IT system, when a new assessment instrument is
    needed, then the user can locate an appropriate assessment
    instrument, and configure that health IT system to use it to capture
    an assessment.

2.  A healthcare providerâ€™s health IT system must be able to support
    assessments from a Clinical Knowledge Resource Repository that
    implements the Questionnaire Retrieval Option.

3.  A healthcare providerâ€™s health IT system must be able to support
    assessments from a Clinical Knowledge Resource Repository that
    implements the Assessor Option.

#### 15.1.1.3 Assessor

The Assessor in this profile performs an assessment and reports the
results as a QuestionnaireResponse to the appropriate patient and
encounter. It must populate the QuestionnaireResponse resource with the
appropriate references to the subject, encounter, author and
questionnaire resources. The subject, encounter, and author resources
must be obtained from the current context of the Assessor actor. The
questionnaire resource should be represented by the canonical url which
uniquely identifies the assessment instrument.

#### 15.1.1.4 Assessment Requestor

The Assessment Requester in this profile requests an assessment of an
assessor and processes results returned in a QuestionnaireResponse
resource. It must accept an assessment as a QuestionnaireResponse
resource from the Assessor actor.

## 15.2 ACDC Actor Options

Options that may be selected for each actor in this profile, are listed
in the Table 15.2-1. Dependencies between options when applicable are
specified in notes.

Table 15.2-1: ACDC - Actors and Options

<table>
<tbody>
<tr class="odd">
<td>Actor</td>
<td>Option Name</td>
<td>Reference</td>
</tr>
<tr class="even">
<td>Clinical Knowledge Resource Repository</td>
<td>Questionnaire Item Retrieval Option<sup>1</sup></td>
<td>PCC TF-15.2.1.1</td>
</tr>
<tr class="odd">
<td></td>
<td>Assessor Option<sup>1</sup></td>
<td>PCC TF-15.2.2</td>
</tr>
<tr class="even">
<td></td>
<td>EHR Launch Option<sup>1</sup></td>
<td>PCC TF-15.2.3</td>
</tr>
<tr class="odd">
<td>Artifact Consumer</td>
<td>None Defined</td>
<td></td>
</tr>
<tr class="even">
<td>Assessment Requestor</td>
<td>EHR Launch Option</td>
<td>PCC TF-15.2.3</td>
</tr>
<tr class="odd">
<td>Assessor</td>
<td>EHR Launch Option</td>
<td>PCC TF-15.2.3</td>
</tr>
</tbody>
</table>

Note 1: At least one of these options shall be supported by the related
actor

### 15.2.1 Questionnaire Item Retrieval Option

The Questionnaire Item Retrieval option enables systems to interpret the
content of the returned Questionnaire resources using their own
Questionnaire handling interface.

#### 15.2.1.1 Clinical Knowledge Resource Repository

A Clinical Knowledge Resource Repository that implements the
Questionnaire Item Retrieval Option shall include the necessary
information in Questionnaire.item fields in the returned Questionnaire
resource to enable execution of the assessment instrument.

### 15.2.2 Assessor Option

The Assessor Option enables a Clinical Knowledge Repository to provide
Assessment capabilities for applications which cannot provide their user
interface to implement the user interactions described by the
Questionnaire resource.

A Clinical Knowledge Resource Repository that implements the Assessor
Option shall be grouped with an Assessor actor that is able to perform
the assessments it provides.

### 15.2.3 EHR Launch Option

The EHR Launch Option allows assessments to be performed using the SMART
on FHIR EHR Launch workflow from the providers EHR system.

#### 15.2.3.1 EHR Launch Requirements on Clinical Knowledge Resource Repository

A Clinical Knowledge Resource Repository that implements the EHR Launch
Option shall include at least one launch-url extension in Questionnaire
resources to tell the receiver how to launch a SMART on FHIR application
that will implement the assessment. That assessor must implement the
FHIR EHR Launch Option.

#### 15.2.3.2 EHR Launch Requirements on Assessment Requester

An Assessment Requester that implements the EHR Launch option shall
initiate a SMART on FHIR EHR Launch protocol via the launch url
associated with the assessment.

### 15.2.3.3 EHR Launch Requirements on Assessor

An Assessor that implements the EHR Launch option supports initiation of
the assessment via the SMART on FHIR EHR Launch protocol and allows
specification of the canonical url of the Questionnaire resource in the
def parameter of the launch url.

## 15.3 ACDC Required Actor Groupings

Table 15.3-1: ACDC - Required Actor Groupings

<table>
<tbody>
<tr class="odd">
<td>ACDC Actor</td>
<td>Actor to be grouped with</td>
<td>Reference</td>
</tr>
<tr class="even">
<td>Assessment Requestor</td>
<td>Secure Node or Secure Application</td>
<td>PCC TF-15.6.3</td>
</tr>
</tbody>
</table>

## 15.4 ACDC Overview

Assessments are the principle means by which numerous forms of data
regarding physical function, mental/cognitive status, social
determinants of health, and patient reported outcomes are collected.
These are variously known as assessments, screening instruments, scales,
scores, questionnaires

Many assessment instruments have been automated, but there are thousands
of these instruments. HealthMeasures\[3\] has nearly 750 measures, the
Alcohol and Drug Abuse Institute at the University of Washington\[4\]
lists over 1031 screening instruments, and a search of PubMed\[5\]
results in nearly 26,000 articles on different instruments used for
patient assessment.

In the US, more than a half dozen quality improvement or recognition
programs require documenting or reporting specific information about
patients that contain elements that can be obtained from health
assessments\[6\]. These are shown in figure 15.4-1 below.

![](media/image2.png)

Figure 15.4-1 Quality Related Assessments

Many of these instruments can be implemented using technology, as they
are simple forms or questionnaires. Some data in these instruments might
be automatically populated by the EHR system. However, because there are
so many instruments, and so many providers of the instruments, it is
challenging to integrate these instruments into provider workflows.

### 15.4.1 Concepts

Assessment instruments are tools which enable clinicians to assess a
patientâ€™s clinical condition based on certain evaluations or
observations performed with the patient. Evaluations may include the
recording of clinical data that is captured by other means (e.g.,
measurement tools) or by simply answering questions based on the
clinician or patientâ€™s knowledge. The result is an assessment that will
provide both the collected data and an assessment of what that means for
the condition being assessed.

Assessments may be used for screening, diagnosis, treatment
determination, or reporting of outcomes. Assessment instruments are used
to gather data on a wide variety of clinical conditions. One well known
example of an assessment instrument is the American College of
Cardiologyâ€™s ASCVD Risk Estimator\[7\]. This instrument provides an
estimation of a patientsâ€™ 10-year ASCVD risk. It appears in the figure
below.

![](media/image3.png)

Figure 15.4.1-1 An Assessment Instrument

Both the gathered data in the assessment and the resulting assessment
can be used for later evaluation, either for clinical care or to support
health research.

As a clinical tool used in the delivery of care, assessment instruments
often go through evaluation and validation, and include training
materials on how the assessment is to be performed\[8\]. Changes to the
questions asked, or the possible responses allowed results in a
different diagnostic instrument, which may or may not perform as well as
the validated instrument. Therefore, developers of assessment
instruments often accompany them with intellectual property controls
that ensure they are implemented appropriately. Many assessment
instruments were originally implemented as paper forms, but with the
growth of the web, these are now often implemented as electronic forms.
Because of the intellectual property controls, instrument developers may
restrict online use to a validated implementation.

This results in a challenge for healthcare providers because each
instrument they choose to use may have different user interfaces,
different initiation protocols and delivery mechanisms, and require
different ways to be integrated into their electronic health record
systems. The purpose of this profile is to provide a way for these
instruments to be readily integrated into the EHR.

Because many of these instruments rely on data that is already known to
the EHR, there is further value in enabling a connection between the EHR
and the system delivering the assessment instrument content so that
information that is already known to the EHR can be supplied to the
assessment instrument delivery system.

In this profile, the assessment instrument is represented as a FHIR
Questionnaire resource. The questionnaire resource is designed to
support collection of data based on answers from end users and enables
detailed control over presentation of the instrument. The responses to
the assessment instrument are represented in the FHIR
QuestionnaireResponse resource. This resource provides the list of
questions, answers and additional data (e.g., assessments, scores, et
cetera) determined from the answers to the questions.

The figure below illustrates the abstract implementation model for
working with assessments for patient reported outcomes\[9\] as published
in the HL7 FHIR Patient Reported Outcomes Implementation Guide. While
this model was developed for patient reported outcome assessments, it
can be applied to other forms of assessment as well.

![pro-abstract-model-basic.png](media/image4.png)

Figure 15.4.1-2 Abstract Model for Basic Questionnaires

The ACDC profile focuses on steps 2 through 5 of the model and
implements these steps using four different actors. The first use case
in this profile, corresponding to step 2 in the diagram above, is to
identify the assessment instrument that the healthcare provider wants to
integrate into their workflow. The PROM Instrument and Metadata
repository in this diagram would support assessment instrument retrieval
by implementing the Clinical Knowledge Resource Repository Actor. The
External PRO Administration System or EHR or Care Delivery Health IT
system could then retrieve instruments by implementing the Artifact
Consumer actor. This enables the assessment instrument to be selected by
the healthcare provider.

The second use case in this profile addresses steps 3 through 5 in
Figure 15.4.1-1, which is the execution of the assessment instrument.

#### 15.4.1.1 Use of Assessment Instrument Results

This profile makes no assumptions about how assessment results are used
after they are returned to the Assessment Requester application. The
results may be stored in the providerâ€™s health IT system, they may be
used to produce other information that is stored in the patientâ€™s chart,
data may be extracted from the assessment to produce a care plan, they
may be discussed with the patient, et cetera. There is no responsibility
on the receiving system to persist or store the results or otherwise
make them accessible for future use, they may simply be discarded after
being produced and acted upon. There may be some requirements in the
providers jurisdiction that requires that the data used in the
assessment be persisted in some way, that is outside of the scope of
this profile\[10\].

This profile does require that the Assessment Requester actor expose a
FHIR endpoint that supports the QuestionnaireResponse create operation.
That does not create a commitment on the Assessment Requester actor to
expose endpoints supporting the read or search operations. It is simply
a convenience used to enable a stateless application to be launched and
â€œreturnâ€� results from its operations.

### 15.4.2 Use Cases

#### 15.4.2.1 Use Case \#1: Finding an Assessment Instrument

##### 15.4.2.1.1 Use Case \#1 Description

In the first use case, a care provider organization is seeking
information about assessment instruments to address a specified
condition or health concern. Their goal is to identify instruments and
eventually acquire instruments which could be used to capture
information essential to management of the care of patients having that
condition. Their EHR will be able to perform the assessment once it has
been acquired.

##### 15.4.2.1.2 Use Case \#1 Process Flow

The Query Artifact transaction is used to request lists of one or more
artifacts that match the users search criteria. The metadata for the
artifacts matching the criteria is returned so that the user can further
explore these artifacts to consider acquisition of them for use in their
health information system.

After identifying an artifact for implementation, the user can either
retrieve the full artifact so that it can be implemented in their health
information system, or a link to where it has been externally
implemented so that they integrated it the collected data into their
system, which is described in more detail in **15.4.2.2 Use Case \#2
Executing the Assessment Instrument**.

Figure 15.4.2.1-1: Use Case \#1 Process Flow in ACDC Profile

#### 15.4.2.2 Use Case \#2: Executing the Assessment Instrument

##### 15.4.2.2.1 Use Case \#2 Description

In the second use case, the care provider organization wants to assess a
patient using the retrieved or identified assessment in their health IT
system and be able to collect the results of this assessment for a given
patient. This process may be initiated through the userâ€™s EHR, a
separate application or device, a patient portal, et cetera.

In this use case, there are several possible ways the assessment data
can be collected.

1.  The providerâ€™s Health IT system can invoke a separate application
    that can interpret the assessment instrument and collect data on the
    patient, returning it to the health IT solution.

2.  A separate application can be launched either manually by the
    provider or through an integration method not specified by this
    guide. This application will integrate with the providerâ€™s Health IT
    system to determine which assessment is to be performed, for which
    patient and which encounter. It will then collect the data and
    return it the EHR attached to the correct patient and encounter.

3.  The providerâ€™s Health IT system can initiate data capture on its own
    forms, using the data describing the assessment instrument. To
    implement this option, the health IT system needs to correctly
    interpret instrument description, collect the data and do what it
    deems necessary with the data that was collected (e.g., create
    observations or other resources, store a questionnaire response, et
    cetera). Because this case can be completely managed by the
    providerâ€™s Health IT system when the questionnaire items are
    provided, it is not addressed within this profile.

During the execution of this use case, the software performing the
assessment may collect data already known about the patient that is
stored in the health IT system that will receive the assessment results.
When the EHR Launch option is used, this data can be accessed via FHIR
resources from the launching EHR system.

##### 15.4.2.2.2 Use Case \#2 **Process Flows**

In this use case, the first step is to associate the assessment
instrument with a context available in the health IT system (shown below
as the Assessment Requestor) that will receive the assessment results.
The context at a minimum establishes the subject of the assessment: the
patient being assessed, and the user information that might be
associated with any provenance for the assessment. The context might
also include the provider requesting the assessment, and the encounter
in which the assessment is performed.

This first step may be implemented via process in which the healthcare
provider orders an assessment be performed or may be initiated via a
SMART on FHIR EHR Launch flow. At the end of this step, the patient or
provider is presented with a user interface that enables them to
complete the assessment.

The next step performs the assessment. During this step, the assessor
may collect additional data from the receiving health IT system to
facilitate completion of the assessment. The software performing the
assessment may connect to the userâ€™s health IT system in order to
perform queries (e.g., using the IHE QEDm or PDQm profile, or through
other methods).

Upon completion of the assessment, the assessor records the results of
the assessment in a QuestionnaireResponse resource stored by the
Assessment Requester actor and sends it to the Assessment Requestor.

Figure 15.4.2.2-1: Use Case \#2 Process Flow in ACDC Profile

## 15.5 ACDC Security Considerations

See ITI TF-2.x Appendix Z.8 â€œMobile Security Considerationsâ€� for general
background on â€œMobileâ€� security considerations, and recommendations
regarding security.

The ACDC profile provides an API for accessing data element level
details that are identifiable to a specific patient. All the data
communicated, including the query parameters, should be considered
patient identifiable information (PII). Assessments may also include
information protected about other individuals and should be considered
individually identifiable information (III). The grouping with IUA, or
some similar user authentication and authorization solution, is critical
for enforcing privacy and security requirements. All accesses to this
data should be recorded as audit log for security surveillance and
privacy reporting. These topics are discussed in Appendix Z.8 with
recommendations.

Some data being exchanged in this profile represent the execution of an
assessment, a validated instrument, for a patient. The data in this can
affect decision treatments, and so may need additional protection
against data integrity and data authenticity risks. To mitigate data
integrity and data authenticity risks, the Assessor may include a
questionnaireresponse-signature\[11\] extension on the
QuestionnaireResponse, or on selected QuestionnaireResponse.item
elements.

Assessment instruments are intellectual property which owners may wish
to protect in various ways, e.g., licensing agreements, copyright
restrictions, et cetera. As such the content of the assessment
instrument should be encrypted during exchange. Accessors of assessment
instruments may need to authenticate themselves in some way before being
able to access assessment instruments. Access to specific assessment
instrument content that may be implemented by a user can have financial
or contractual ramifications for that user (e.g., incur charges), and
should therefore be logged by both the owner and receiver of the
content.

A Health IT system that is configured to support a new assessment
instrument has had a significant change in functionality that should be
logged.

This profile makes use of the SMART on FHIR EHR Launch protocol, and
some implementations may also use the SMART on FHIR Standalone Launch
protocol. Use of these protocols relies on OAuth2, HTTPS and TLS
communications, ensuring authentication, authorization and encryption
during exchanges involving PHI or III.

## 15.6 ACDC Cross Profile Considerations

### 15.6.1 PCC QEDm â€“ Query for Existing Data for Mobile

An Assessor may be grouped with a Clinical Data Consumer actor from the
QEDm profile to enable it to access data from the requesting system.
This grouping enables data that is already known to the requesting
system to be accessed.

Given that an Assessor is grouped with the Clinical Data Consumer actor,
when the authorization process is performed, the Assessor shall
negotiate for the additional scopes that it desires access to via the
Clinical Data Consumer actor in order to perform the assessment. The
Assessor Actor shall not require the Assessment Requester to implement
the Clinical Data Source Actor and must be able to perform normally if
it does not support some of the additional requested scopes or
resources.

The Assessment Requester may be grouped with a Clinical Data Source
actor from the QEDm profile to enable it to respond to requests for data
access from the requesting system. This grouping enables data that is
already known to the requesting system to be accessed during the
assessment process. Given the Assessment Requester Actor is grouped with
a Clinical Data Source from the QEDm profile, when the Assessor requests
additional scopes to access clinical data, the Assessment Request shall
respond with the scopes appropriate for the clinical data options that
it supports.

### **15.6.2 ITI PDQm** â€“ Patient Demographics Query for Mobile

An Assessor may be grouped with a Patient Demographics Consumer actor
from the PDQm profile to enable it to access data about the patient from
the requesting system. This grouping enables demographics data that is
already known to the requesting system to be accessed.

Given that an Assessor is grouped with the Patient Demographics Consumer
actor, when the authorization process is performed, the Assessor shall
negotiate for the additional scopes that it desires access to via the
Patient Demographics Consumer actor in order to perform the assessment.
The Assessor Actor shall not require the Assessment Requester to
implement the Patient Demographics Supplier Actor and must be able to
perform normally if the Assessment Requester does not support some of
the additional requested scopes or resources.

The Assessment Requester may be grouped with a Patient Demographics
Supplier actor from the PDQm profile to enable it to respond to requests
for patient demographic data from the requesting system. This grouping
enables data that is already known to the requesting system to be
accessed during the assessment process. Given the Assessment Requester
Actor is grouped with a Patient Demographics Supplier actor from the
PDQm profile, when the Assessor requests additional scopes to access
patient demographics, the Assessment Requester shall respond with the
scopes appropriate for the patient demographics that it supports.

### **15.6.3 ITI ATNA** â€“ Audit Trail and Node Authentication

The Assessment Requester actor in this profile must be grouped with a
Secure Node or Secure Application actor. All other actors in this
profile may be grouped with the Secure Node or Secure Application
actors. The Assessor actor should be grouped with the Secure Node or
Secure Application actor. The Clinical Knowledge Resource Repository and
Artifact Consumer actors may also be grouped with the Secure Node or
Secure Application actors.

<span id="_Toc345074671" class="anchor"></span>Volume 2 â€“ Transactions

Add Section 3.71

## 3.71 Query Artifact \[PCC-71\]

This section corresponds to Transaction PCC-71 of the IHE PCC Technical
Framework. Transaction PCC-71 is used by the Clinical Knowledge Resource
Repository and Artifact Consumer Actors.

### 3.71.1 Scope

The Query Artifact transaction is used to query for assessment
instruments in Questionnaires that satisfy a set of parameters by using
the FHIR framework. The result of the query is a FHIR Bundle containing
FHIR clinical data Resources that match the query parameters.

The ACDC Profile assumes that categories and codes referenced by these
FHIR Resources need to be defined at the time of deployment. The
specification of these FHIR Resources make recommendations on categories
and codes, that should be considered.

### 3.71.2 Actor Roles

Figure 3.71.2-1: Use Case Diagram

Table 3.71.2-1: Actor Roles

<table>
<thead>
<tr class="header">
<th><strong>Actor:</strong></th>
<th>Artifact Consumer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Role:</strong></td>
<td>Queries the Clinical Knowledge Resource Repository for assessment instrument content requested by the Artifact Consumer.</td>
</tr>
<tr class="even">
<td><strong>Actor:</strong></td>
<td>Clinical Knowledge Resource Repository</td>
</tr>
<tr class="odd">
<td><strong>Role:</strong></td>
<td>Responds to query, supplying the FHIR Questionnaire Resources representing the assessment instrument content that match the search criteria provided by the Artifact Consumer.</td>
</tr>
</tbody>
</table>

### 3.71.3 Referenced Standards

<table>
<thead>
<tr class="header">
<th>HL7 FHIR</th>
<th>HL7Â® FHIRÂ® standard R4: <a href="http://www.hl7.org/fhir/R4/index.html">http://www.hl7.org/fhir/R4/index.html</a></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>IETF RFC 2616</td>
<td>Hypertext Transfer Protocol â€“ HTTP/1.1</td>
</tr>
<tr class="even">
<td>IETF RFC 7540</td>
<td>Hypertext Transfer Protocol â€“ HTTP/2</td>
</tr>
<tr class="odd">
<td>IETF RFC 3986</td>
<td>Uniform Resource Identifier (URI): Generic Syntax</td>
</tr>
<tr class="even">
<td>IETF RFC 4627</td>
<td>The application/json Media Type for JavaScript Object Notation (JSON)</td>
</tr>
<tr class="odd">
<td>IETF RFC 6585</td>
<td>Additional HTTP Status Codes</td>
</tr>
</tbody>
</table>

### 3.71.4 Interaction Diagram

#### 3.71.4.1 Search Artifact Request message

This message uses the HTTP GET method parameterized query to retrieve
FHIR Questionnaire Resources representing assessment instruments
matching search parameters in the GET request. This transaction performs
a FHIR search request on Questionnaire resources.

ACDC does not mandate any additional extended or custom method.

##### 3.71.4.1.1 Trigger Events

When the Artifact Consumer needs to discover Questionnaire Resources
matching various search parameters it issues a Query Artifact message.

##### 3.71.4.1.2 Message Semantics

The Artifact Consumer executes an HTTP GET against the proper Clinical
Knowledge Resource Repositoryâ€™s ACDC URL.

The search target follows the FHIR http specification
([http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/STU3/http.html)),
addressing the proper FHIR Resource type, according to the supported
query options (see Section 3.71.4.1.2.1). The syntax of the FHIR query
is:

GET \[base\]/Questionnaire?\[parameters\]

with the following constraints:

  - The \[base\] represents the Service Base URL

  - The \[parameters\] represents a series of encoded name-value pairs
    representing the filter for the query, as specified in Section
    3.71.4.1.2.1, as well as control parameters to modify the behavior
    of the Clinical Knowledge Resource Repository such as response
    format, or pagination. See ITI TF-2x: Appendix Z.6 for more details
    on response format.

    The Questionnaire resources returned by this transaction shall
    conform to FHIR requirements associated with the IHE and need only
    include fields in the Questionnaire resource marked as being for
    summaries.

###### 3.71.4.1.2.1 Search Parameters

All query parameter values shall be appropriately encoded per RFC 3986
â€œpercentâ€� encoding rules. Note that percent encoding does restrict the
character set to a subset of ASCII characters which is used for encoding
all other characters used in the URL.

The Clinical Knowledge Resource Repository must support the following
set of searches:

1.  A query based on the content of the Assessment instrument that
    supports any of the following search parameters:

<!-- end list -->

  - \_summary=true

  - code (token)

  - At least one of context (token), context-quantity (quantity),
    context-type (token), context-type-quantity (composite),
    context-type-value (composite)

  - date (date)

  - description (string)

  - name (string)

  - publisher (string)

  - status (token)

<!-- end list -->

2.  A query based on the canonical url of the Assessment instrument.

      - url (uri)

The Clinical Knowledge Resource Repository may choose to support
additional query parameters beyond the subset defined by the profiling
listed below, if done according to the core FHIR specification. Such
additional parameters are considered out of scope for this transaction.
The Clinical Knowledge Resource Repository may ignore any additional
parameter not specified in this transaction. See
[http://hl7.org/fhir/R4/search.html\#errors](http://hl7.org/fhir/STU3/search.html#errors).

###### 3.71.4.1.2.2 Populating Expected Response Format

The FHIR standard provides encodings for responses as either XML or
JSON. The Clinical Knowledge Resource Repository shall support both
message encodings, whilst the Artifact Consumer shall support one and
may support both.

See ITI TF-2x: Appendix Z.6 for details.

##### 3.71.4.1.3 Expected Actions

1.  *The Artifact Consumer shall send a query to a Clinical Knowledge
    Resource Repository.*

2.  *The* Clinical Knowledge Resource Repository *shall process the
    query to discover Questionnaire FHIR Resource entries* (the
    assessment instruments) *that match the search parameters given and*
    shall use a FHIR Bundle resource to collect the matching entries to
    be returned. The Clinical Knowledge Resource Repository shall
    respond with a Mobile Artifact Query Response synchronously (i.e.,
    on the same connection as was used to initiate the request). See ITI
    TF-2x: Appendix Z.6 for more details on response format handling.
    See ITI TF-2x: Appendix Z.7 for handling guidance for Access Denied.

3.  Based on the query results, the Clinical Knowledge Resource
    Repository will either return an error or success. The guidance on
    handling Access Denied related to use of 200, 403 and 404 can be
    found in ITI TF-2x: Appendix Z.7 (reproduced here for
    readability).

    When the Clinical Knowledge Resource Repository needs to report an
    error, it shall use HTTP error response codes and should include a
    FHIR OperationOutcome with more details on the failure. See FHIR
    [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/STU3/http.html)
    and
    [http://hl7.org/fhir/R4/operationoutcome.html](http://hl7.org/fhir/STU3/operationoutcome.html).

    If the Query Artifact request message is processed successfully,
    whether or not Questionnaire Resources are found, the HTTP status
    code shall be 200.

###### 3.71.4.2.2.2 Resource Bundling

The Query Artifact Response message shall be a *FHIR* Bundle Resource
containing zero or more Questionnaire resources conforming to the ACDC
Questionnaire profile in 6.6.107.1. The response shall adhere to the
FHIR Bundle constraints specified in ITI TF-2x: Appendix Z.1.

#### 3.71.5 Read Artifact Request message

This message uses the HTTP GET method to retrieve an individual FHIR
Questionnaire Resource. This transaction performs a FHIR read request on
Questionnaire resources.

##### 3.71.4.1.1 Trigger Events

When the Artifact Consumer needs to read Questionnaire Resources it
issues a Read Artifact message.

##### 3.71.4.1.2 Message Semantics

The Artifact Consumer executes an HTTP GET against the proper Clinical
Knowledge Resource Repositoryâ€™s ACDC URL.

The search target follows the FHIR http specification
([http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/STU3/http.html)),
addressing the proper FHIR Resource type. The syntax of the FHIR read
is:

GET \[base\]/Questionnaire/{id}

where {id} is the internal identifier of the Questionnaire resource as
known by the Clinical Knowledge Resource Repository.

###### 3.71.4.1.2.2 Populating Expected Response Format

The FHIR standard provides encodings for responses as either XML or
JSON. The Clinical Knowledge Resource Repository shall support both
message encodings, whilst the Artifact Consumer shall support one and
may support both.

See ITI TF-2x: Appendix Z.6 for details.

##### 3.71.4.1.3 Expected Actions

1.  *The Artifact Consumer shall send read artifact request to a
    Clinical Knowledge Resource Repository.*

2.  The Clinical Knowledge Resource Repository will either return an
    error or success. The guidance on handling Access Denied related to
    use of 200, 403 and 404 can be found in ITI TF-2x: Appendix Z.7
    (reproduced here for readability).

3.  On success, the Clinical Knowledge Resource Repository will return

#### 3.71.4.3 Capability Statement Resource

Clinical Knowledge Resource Repositories implementing this transaction
should provide a CapabilityStatement Resource as described in ITI TF-2x:
Appendix Z.3 indicating the query operation for the Resources have been
implemented and shall include all the supported query parameters.

### 3.71.5 Security Considerations

The retrieved content contains IP that shall be protected. See the
general Security Considerations in PCC TF-1: 15.5.

#### 3.71.5.1 Security Audit Considerations

Grouping a Clinical Knowledge Resource Repository with an ATNA Secure
Node or Secure Application is recommended. Grouping an Artifact Consumer
with an ATNA Secure Node or Secure Application is recommended.

The Artifact Consumer may be considered overburdened to fully implement
the requirements of a Secure Node or Secure Application. The Clinical
Knowledge Resource Repository is likely a more robust application and
should generate audit messages.

When grouped with the Secure Node or Secure Application actor, both
actors generate a â€�Queryâ€� Audit Message, which is consistent with ATNA.
The Query Artifact \[PCC-71\] is a Query Information event as defined in
Table ITI TF-2:3.20.4.1.1.1-1. The message shall comply with the
following pattern:

  - Event

<!-- end list -->

  - > EventID = EV(110112, DCM, â€œQueryâ€�)

  - > EventTypeCode = EV(â€œPCC-71â€�, â€œIHE Transactionsâ€�, â€œQuery Artifactâ€�)

  - > EventActionCode = â€œEâ€� (Execute)

<!-- end list -->

  - Source of the request (1..1)-\>

<!-- end list -->

  - > UserID = The Artifact Consumer actor system identity

  - > RoleIDCode = EV(110153, DCM, â€œSourceâ€�)

<!-- end list -->

  - Human Requestor (0..n) ïƒ  one for each know User

<!-- end list -->

  - > UserID = Identity of the human that initiated the transaction.

  - > RoleIDCode = Access Control role(s) the user holds that allows
    > this transaction

<!-- end list -->

  - Destination of the request (1..1)

<!-- end list -->

  - > Clinical Knowledge Resource Repository actor system identity

  - > RoleIDCode = EV(110152, DCM, â€œDestinationâ€�)

<!-- end list -->

  - Audit Source (1..1)

<!-- end list -->

  - > not specified

<!-- end list -->

  - Query Parameters (1..1)

<!-- end list -->

  - > ParticipantObjectTypeCode = â€œ2â€� (system object)

  - > ParticipantObjectTypeCode Role = â€œ24â€� (query)

  - > ParticipantObjectIDTypeCode = EV(â€œPCC-71â€�, â€œIHE Transactionsâ€�,
    > â€œQuery Artifactâ€�)

  - > ParticipantObjectQuery = Requested URL including query parameters,
    > base64 encoded

  - > ParticipantObjectDetail = HTTP Request Headers contained in the
    > query (e.g., Accept header)

Add Section 3.72

## 3.72 Request Assessment \[PCC-72\]

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

<table>
<thead>
<tr class="header">
<th><strong>Actor:</strong></th>
<th>Assessment Requestor</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Role:</strong></td>
<td>Requests an assessment be performed using the specified FHIR Questionnaire Resource for the patient and encounter in the current context.</td>
</tr>
<tr class="even">
<td><strong>Actor:</strong></td>
<td>Assessor</td>
</tr>
<tr class="odd">
<td><strong>Role:</strong></td>
<td>Responds to request, by creating a FHIR QuestionnaireResponse Resource for the patient and encounter in the current context representing the execution of the assessment instrument provided.</td>
</tr>
</tbody>
</table>

### 3.72.3 Referenced Standards

<table>
<thead>
<tr class="header">
<th>HL7 FHIR</th>
<th>HL7Â® FHIRÂ® standard R4: <a href="http://www.hl7.org/fhir/R4/index.html">http://www.hl7.org/fhir/R4/index.html</a></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>HL7 SMART on FHIR</td>
<td>HL7Â® FHIRÂ® SMART Application Launch Framework Implementation Guide Release 1.0.0 <a href="http://hl7.org/fhir/smart-app-launch/index.html">http://hl7.org/fhir/smart-app-launch/index.html</a></td>
</tr>
<tr class="even">
<td>IETF RFC 2616</td>
<td>Hypertext Transfer Protocol â€“ HTTP/1.1</td>
</tr>
<tr class="odd">
<td>IETF RFC 7540</td>
<td>Hypertext Transfer Protocol â€“ HTTP/2</td>
</tr>
<tr class="even">
<td>IETF RFC 3986</td>
<td>Uniform Resource Identifier (URI): Generic Syntax</td>
</tr>
<tr class="odd">
<td>IETF RFC 4627</td>
<td>The application/json Media Type for JavaScript Object Notation (JSON)</td>
</tr>
<tr class="even">
<td>IETF RFC 6585</td>
<td>Additional HTTP Status Codes</td>
</tr>
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
SMART on FHIR in the SMART Authorization Sequence\[12\].

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
shall provide a CapabilityStatement Resource as described in ITI TF-2x:
Appendix Z.3.

When the EHR Lauch option is support, this capability statement shall
provide the required information to support a SMART on FHIR EHR Launch.

### 3.72.5 Security Considerations

The posted content contains PHI and potentially III that shall be
protected. See the general Security Considerations in PCC TF-1: 15.5.

#### 3.72.5.1 Security Audit Considerations

When the EHR Launch option is used and the actors are grouped with the
Secure Node or Secure Application actor, the Assessment Requestor and
Assessor actors both generate an Application Start Audit Event
consistent with ATNA. The message shall comply with the following
pattern:

  - Event

<!-- end list -->

  - > EventID = EV 110100, Application Activity, â€œAudit event:
    > Application Activity has taken place.â€�)

  - > EventTypeCode = EV(110120, Application Start, â€œAudit event:
    > Application Entity has started.â€�)

  - > EventActionCode = â€œXâ€� (Execute)

<!-- end list -->

  - Application Launcher (1..1)

<!-- end list -->

  - > UserID = The Assessment Requestor actor system identity

  - > RoleIDCode = EV(110151, DCM, â€œApplicationâ€�)

<!-- end list -->

  - Patient (1..1)

<!-- end list -->

  - > The identity of the patient being assessed.

<!-- end list -->

  - Human Requestor (0..n) ïƒ  one for each known User

<!-- end list -->

  - > UserID = Identity of the human that initiated the transaction.

  - > RoleIDCode = Access Control role(s) the user holds that allows
    > this transaction

<!-- end list -->

  - Application (1..1)

<!-- end list -->

  - > Asessor actor system identity

  - > RoleIDCode = EV(110150, DCM, â€œApplicationâ€�)

<!-- end list -->

  - Audit Source (1..1)

<!-- end list -->

  - > not specified

When the assessment is complete, the Assessor shall issue an Application
Stop audit event. The message shall comply with the following pattern:

  - Event

<!-- end list -->

  - > EventID = EV 110100, Application Activity, â€œAudit event:
    > Application Activity has taken place.â€�)

  - > EventTypeCode = EV(110121, Application Stop, â€œAudit event:
    > Application Entity has stopped.â€�)

  - > EventActionCode = â€œXâ€� (Execute)

<!-- end list -->

  - Application Launcher (1..1)

<!-- end list -->

  - > UserID = The Assessment Requestor actor system identity

  - > RoleIDCode = EV(110151, DCM, â€œApplication Launcherâ€�)

<!-- end list -->

  - Patient (1..1)

<!-- end list -->

  - > The identity of the patient being assessed.

<!-- end list -->

  - Human Requestor (0..n) ïƒ  one for each known User

<!-- end list -->

  - > UserID = Identity of the human that initiated the transaction.

  - > RoleIDCode = Access Control role(s) the user holds that allows
    > this transaction

<!-- end list -->

  - > Application (1..1)

<!-- end list -->

  - > Asessor actor system identity

  - > RoleIDCode = EV(110150, DCM, â€œApplicationâ€�)

<!-- end list -->

  - Audit Source (1..1)

<!-- end list -->

  - > not specified

Add Section 3.73

## 3.73 Report Assessment \[PCC-73\]

This section corresponds to Transaction PCC-73 of the IHE PCC Technical
Framework. Transaction PCC-73 is used by the Assessment Requester and
Assessor Actors.

### 3.73.1 Scope

The Report Assessment transaction is used to report the results of an
assessment. The result of this transaction is the production of a FHIR
QuestionnaireResponse Resource that contains the results of the
assessment.

### 3.73.2 Actor Roles

Figure 3.73.2-1: Use Case Diagram

Table 3.73.2-1: Actor Roles

<table>
<thead>
<tr class="header">
<th><strong>Actor:</strong></th>
<th>Assessment Requestor</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Role:</strong></td>
<td>Requests an assessment be performed using the specified FHIR Questionnaire Resource for the patient and encounter in the current context.</td>
</tr>
<tr class="even">
<td><strong>Actor:</strong></td>
<td>Assessor</td>
</tr>
<tr class="odd">
<td><strong>Role:</strong></td>
<td>Responds to request, by creating a FHIR QuestionnaireResponse Resource for the patient and encounter in the current context representing the execution of the assessment instrument provided.</td>
</tr>
</tbody>
</table>

### 3.73.3 Referenced Standards

<table>
<thead>
<tr class="header">
<th>HL7 FHIR</th>
<th>HL7Â® FHIRÂ® standard R4: <a href="http://www.hl7.org/fhir/R4/index.html">http://www.hl7.org/fhir/R4/index.html</a></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>HL7 SMART on FHIR</td>
<td>HL7Â® FHIRÂ® SMART Application Launch Framework Implementation Guide Release 1.0.0 <a href="http://hl7.org/fhir/smart-app-launch/index.html">http://hl7.org/fhir/smart-app-launch/index.html</a></td>
</tr>
<tr class="even">
<td>IETF RFC 2616</td>
<td>Hypertext Transfer Protocol â€“ HTTP/1.1</td>
</tr>
<tr class="odd">
<td>IETF RFC 7540</td>
<td>Hypertext Transfer Protocol â€“ HTTP/2</td>
</tr>
<tr class="even">
<td>IETF RFC 3986</td>
<td>Uniform Resource Identifier (URI): Generic Syntax</td>
</tr>
<tr class="odd">
<td>IETF RFC 4627</td>
<td>The application/json Media Type for JavaScript Object Notation (JSON)</td>
</tr>
<tr class="even">
<td>IETF RFC 6585</td>
<td>Additional HTTP Status Codes</td>
</tr>
</tbody>
</table>

### 3.73.4 Interaction Diagram

#### 3.73.4.1 Create Assessment message

The Assessor reports the results of the assessment in a
QuestionnaireResponse to the Assessment Requester as a
QuestionnaireResponse.

##### 3.73.4.1.1 Trigger Events

When an assessment is complete the Assessor will send the Create
Assessment Message to the Assessment Requester actor.

##### 3.73.4.1.2 Message Semantics

The semantics of the QuestionnaireResponse are treated as the returned
result from an assessment request. There is no expectation from this
transaction that the results are necessarily persisted permanently
within the patient chart. The results may be used to further refine
treatment plans, record observations in the patient chart, or be used
for purposes other than being stored. There is no requirement in this
profile that the Assessment Requester be able to support the read,
search or update transactions on the â€œcreatedâ€� QuestionnaireResponse.

Implementations should document what is done with the
QuestionnaireResponse.

The semantics of the QuestionnaireResponse are treated as an update to a
previously recorded assessment. There is no expectation from this
transaction that the results are persisted permanently within the
patient chart. The assessment may be used to further refine treatment
plans, record observations in the patient chart, or be used for purposes
other than being stored. There is no requirement in this profile that
the Assessment Requester be able to support the read, search or update
transactions on the â€œcreatedâ€� QuestionnaireResponse.

Implementations should document what is done with the
QuestionnaireResponse.

##### 3.73.4.1.3 Expected Actions

The Assessor performs a create operation on the QuestionnaireResponse
endpoint of the Assessment Requester with a body of the transaction
containing the QuestionnaireResponse resource as constrained in the
QuestionnaireResponse profile described in section 6.6.Y2. The value of
Questionnaire.status in this request shall be "completed".

This is an HTTP or HTTPS POST of a QuestionnaireResponse resource, as
constrained by this profile. See
<http://hl7.org/fhir/R4/http.html#create>. The request shall specify the
Content-Type (either application/xml or application/json) in the
Content-Type header.

An example message is given below.

POST \[base\]/QuestionnaireResponse
Content-Type: application/json

{

{ "resourceType": "QuestionnaireResponse" },

{ "status": "completed" },

âˆ¶

}

The Assessment Requester responds, with success or error, as defined by
the FHIR RESTful create interaction. See
<http://hl7.org/fhir/R4/http.html#create>.

Upon success, the Assessment Requester shall include a Location header
that specifies the URL associated with the assessment. This URL may be
used with a subsequent Update Assessment message.

An example response is given below:

HTTP 200 Ok

Location:
\[base\]/QuestionnaireResponse/523ede5e-fe46-4d11-8c29-ae36ee64e730

#### 3.73.4.1 Update Assessment message

The Assessor reports the results of the updated assessment in a
QuestionnaireResponse to the Assessment Requester as a
QuestionnaireResponse.

##### 3.73.4.1.1 Trigger Events

When an assessment is updated, the Assessor will send the Update
Assessment Message to the Assessment Requester actor.

##### 3.73.4.1.2 Message Semantics

The semantics of the QuestionnaireResponse are treated as an update to a
previously recorded assessment. There is no expectation from this
transaction that the results are persisted permanently within the
patient chart.

##### 3.73.4.1.3 Expected Actions

The Assessor performs an update operation on the QuestionnaireResponse
endpoint of the Assessment Requester with a body of the transaction
containing the QuestionnaireResponse resource as constrained in the
QuestionnaireResponse profile described in section 6.6.Y2. The Assessor
shall set the value of Questionnaire.status in this request to "amended"
or "entered-in-error".

This is an HTTP or HTTPS PUT of a QuestionnaireResponse resource. See
<http://hl7.org/fhir/R4/http.html#update>. The request shall specify the
Content-Type (either application/xml or application/json) in the
Content-Type header.

An example message is given below.

PUT \[base\]/QuestionnaireResponse
Content-Type: application/json

{

{ "resourceType": "QuestionnaireResponse" },

{ "status": "amended" },

âˆ¶

}

The Assessment Requester responds, with success or error, as defined by
the FHIR RESTful create interaction. See
<http://hl7.org/fhir/R4/http.html#update>.

Upon success, the Assessment Requester should include a Location header
that specifies the URL associated with the assessment.

An example response is given below:

HTTP 200 Ok

Location:
\[base\]/QuestionnaireResponse/523ede5e-fe46-4d11-8c29-ae36ee64e730

#### 3.73.5 Capability Statement Resource

Assessor and Assessment Requester actors implementing this transaction
shall provide a CapabilityStatement Resource as described in ITI TF-2x:
Appendix Z.3 indicating that the create and update operations for
QuestionnaireResponse have been implemented and shall include all the
supported parameters.

### 3.73.6 Security Considerations

The posted content contains PHI and potentially III that shall be
protected. See the general Security Considerations in PCC TF-1: 15.5.

#### 3.73.6.1 Security Audit Considerations

When grouped with the Secure Node or Secure Application actor, the
Assessor actor generates a â€œExportâ€� Audit Message and the Assessment
Requester generates an â€œImportâ€� Audit Message, which is consistent with
ATNA. The Report Assessment \[PCC-73\] is a PHI Export/PHI Import event
pair as defined in Table ITI TF-2:3.20.4.1.1.1-1. The message shall
comply with the following pattern:

  - Event *for the Assessor*

<!-- end list -->

  - > EventID = EV (110106, DCM, "Export")

  - > EventTypeCode = EV(â€œPCC-73â€�, â€œIHE Transactionsâ€�, â€œReport
    > Assessmentâ€�)

  - > EventActionCode = â€œRâ€� (Read)

<!-- end list -->

  - Event *for the Assessment Requestor*

<!-- end list -->

  - > EventID = EV (110107, DCM, "Import")

  - > EventTypeCode = EV(â€œPCC-73â€�, â€œIHE Transactionsâ€�, â€œReport
    > Assessmentâ€�)

  - > EventActionCode = â€œCâ€� (Create)

<!-- end list -->

  - Source of the request (1..1)

<!-- end list -->

  - > UserID = The Assessor actor system identity

  - > RoleIDCode = EV(110153, DCM, â€œSourceâ€�)

<!-- end list -->

  - Patient (1..1)

<!-- end list -->

  - > *No additional constraints*

<!-- end list -->

  - Participating Object

<!-- end list -->

  - > ParticipantObjectTypeCode = 2 (system)

  - > ParticipantObjectTypeCodeRole = 4 (other)

  - > ParticipantObjectIDTypeCode = EVÂ [("QuestionnaireResponse", FHIR,
    > "QuestionnaireResponse")](http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_D.html#DCM_110180)

  - > ParticipantObjectID = *QuestionnaireResponse.identifier*

<!-- end list -->

  - Human Requestor (0..n) ïƒ  one for each known User

<!-- end list -->

  - > UserID = Identity of the human that initiated the transaction.

  - > RoleIDCode = Access Control role(s) the user holds that allows
    > this transaction

<!-- end list -->

  - Destination of the request (1..1)

<!-- end list -->

  - > Assessment Requester actor system identity

  - > RoleIDCode = EV(110152, DCM, â€œDestinationâ€�)

<!-- end list -->

  - Audit Source (1..1)

<!-- end list -->

  - > not specified

<span id="_Toc7624261" class="anchor"></span>Volume 3 â€“ Content Modules

## **6.6 HL7 FHIR Content Modules**

### **6.6.107.1 Questionnaire**

The following table shows the IHE constraints on the Questionnaire
resource used with the ACDC profile.

Table 6.6.107.1-1: Questionnaire resource

<table>
<thead>
<tr class="header">
<th>Name</th>
<th>Flags</th>
<th>Card.</th>
<th>Description &amp; Constraints</th>
<th>(Profile) Comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>.. Questionnaire</td>
<td>ITU</td>
<td></td>
<td>DomainResource</td>
<td>A structured set of questions</td>
</tr>
<tr class="even">
<td>... extension</td>
<td>Î£<strong>S</strong></td>
<td>0..1</td>
<td>launchurl</td>
<td><strong>If items are not present, then the question must report the launch url of an Assessor that can perform the assessment.</strong></td>
</tr>
<tr class="odd">
<td>... url</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>uri</td>
<td>Canonical identifier for this questionnaire, represented as a URI (globally unique)</td>
</tr>
<tr class="even">
<td>... name</td>
<td>Î£I</td>
<td><strong>1</strong>..1</td>
<td>string</td>
<td>Name for this questionnaire (computer friendly)</td>
</tr>
<tr class="odd">
<td>... title</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>string</td>
<td>Name for this questionnaire (human friendly)</td>
</tr>
<tr class="even">
<td>... date</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>dateTime</td>
<td>Date last changed</td>
</tr>
<tr class="odd">
<td>... publisher</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>string</td>
<td>Name of the publisher (organization or individual)</td>
</tr>
<tr class="even">
<td>... description</td>
<td></td>
<td><strong>1</strong>..1</td>
<td>markdown</td>
<td>Natural language description of the questionnaire</td>
</tr>
</tbody>
</table>

A FHIR Questionnaire StructureDefinition can be found in implementation
materials â€“ see ITI TF-2x: Appendix W for instructions on how to get to
the implementation materials.

### **6.6.108.1 QuestionnaireResponse**

The following table shows the IHE constraints on the
**QuestionnaireResponse** resource used with the ACDC profile.

Table 6.6.Y2-1: QuestionnaireResponse resource

<table>
<thead>
<tr class="header">
<th>Name</th>
<th>Flags</th>
<th>Card.</th>
<th>Description &amp; Constraints</th>
<th>(Profile) Comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>.. QuestionnaireResponse</td>
<td>TU</td>
<td></td>
<td>DomainResource</td>
<td></td>
</tr>
<tr class="even">
<td>... contained</td>
<td></td>
<td><strong>0..*</strong></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>.... Questionnaire</td>
<td></td>
<td><strong>0..1</strong></td>
<td>Questionnaire</td>
<td></td>
</tr>
<tr class="even">
<td>..... id</td>
<td></td>
<td><strong>1..1</strong></td>
<td>id</td>
<td></td>
</tr>
<tr class="odd">
<td>â€¦ extension</td>
<td></td>
<td>0..*</td>
<td>questionnaireresponse-signature</td>
<td><strong>A signature</strong>[13] <strong>on the QuestionnaireResponse content.</strong></td>
</tr>
<tr class="even">
<td>... questionnaire</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>canonical(Questionnaire)</td>
<td>The questionnaire being answered must be provided.</td>
</tr>
<tr class="odd">
<td>.... extension</td>
<td></td>
<td><strong>0..1</strong></td>
<td>containedquestionnaire-reference</td>
<td><strong>This is an extension to the canonical reference data type providing a reference to a copy of the resource contained in the response. This extension must be present when contained.Questionnaire is present.</strong></td>
</tr>
<tr class="even">
<td>..... url</td>
<td></td>
<td><strong>1..1</strong></td>
<td><em>TBD</em></td>
<td>This extension supports a reference to a contained copy of the questionnaire resource. It is needed to ensujre that the reference</td>
</tr>
<tr class="odd">
<td>..... valueReference</td>
<td></td>
<td><strong>1..1</strong></td>
<td>Reference</td>
<td>The reference must start with # and be followed by the id of the contained Questionnaire resource.</td>
</tr>
<tr class="even">
<td>... status</td>
<td>?!Î£</td>
<td>1..1</td>
<td>code</td>
<td>status may have any value other than in-progress</td>
</tr>
<tr class="odd">
<td>... subject</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>Reference(<strong>Patient</strong>)</td>
<td>The subject shall be present, and must be a reference to a Patient resource.</td>
</tr>
<tr class="even">
<td>... encounter</td>
<td>Î£<strong>S</strong></td>
<td>0..1</td>
<td>Reference(Encounter)</td>
<td>The encounter shall be present when known.</td>
</tr>
<tr class="odd">
<td>... authored</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>dateTime</td>
<td>Date the answers were gathered shall be provided.</td>
</tr>
<tr class="even">
<td>... author</td>
<td>Î£</td>
<td><strong>1</strong>..1</td>
<td>Reference(Device | Practitioner | PractitionerRole | Patient | RelatedPerson | Organization)</td>
<td>Person who received and recorded the answers shall be provided.</td>
</tr>
<tr class="odd">
<td>... source</td>
<td>Î£<strong>S</strong></td>
<td>0..1</td>
<td>Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)</td>
<td>The person who answered the questions shall be provided when known.</td>
</tr>
<tr class="even">
<td>... item</td>
<td>I</td>
<td><strong>1</strong>..*</td>
<td>BackboneElement</td>
<td>At least one item shall be present unless status is entered-in-error or stopped.</td>
</tr>
</tbody>
</table>

A FHIR QuestionnaireResponse StructureDefinition can be found in
implementation materials â€“ see ITI TF-2x: Appendix W for instructions on
how to get to the implementation materials.

#### 6.7.3 Launch URL Extension

The Launch URL extension is defined in the table below.

Table 6.6.107.1-2: Questionnaire resource

<table>
<thead>
<tr class="header">
<th><a href="http://www.hl7.org/fhir/formats.html#table">Name</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Flags</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Card.</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Type</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Description &amp; Constraints</a></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="http://www.hl7.org/fhir/extension-questionnaireresponse-signature-definitions.html#extension.signature">launchurl</a></td>
<td></td>
<td>0..*</td>
<td><a href="http://www.hl7.org/fhir/datatypes.html#Signature">uri</a></td>
<td>URL = http://ihe.net/fhir/questionnaire-launchurl<br />
Represents the launch url of a SMART on FHIR application where the assessment can be performed.<br />
<br />
Use on Element ID Questionnaire</td>
</tr>
</tbody>
</table>

#### 6.7.4 Contained Questionnaire Reference Extension

The Contained Questionnaire Reference extension is defined in the table
below.

Table 6.6.107.1-2: Questionnaire resource

<table>
<thead>
<tr class="header">
<th><a href="http://www.hl7.org/fhir/formats.html#table">Name</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Flags</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Card.</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Type</a></th>
<th><a href="http://www.hl7.org/fhir/formats.html#table">Description &amp; Constraints</a></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="http://www.hl7.org/fhir/extension-questionnaireresponse-signature-definitions.html#extension.signature">containedquestionnaire-reference</a></td>
<td></td>
<td>1..1</td>
<td><a href="http://www.hl7.org/fhir/datatypes.html#Signature">Reference</a></td>
<td>URL = {TBD}/<a href="http://www.hl7.org/fhir/extension-questionnaireresponse-signature-definitions.html#extension.signature">containedquestionnaire-reference</a>: Provides a reference to a copy of the questionnaire stored as a contained resource in the response.<br />
<br />
Use on QuestionnaireResponse.questionaire</td>
</tr>
</tbody>
</table>

1.  HL7 is the registered trademark of Health Level Seven International.

2.  FHIR is the registered trademark of Health Level Seven
    International.

3.  <http://HealthMeasures.net>

4.  <http://lib.adai.washington.edu/instruments/>

5.  <https://www.ncbi.nlm.nih.gov/pubmed/?term=assessment+instrument>

6.  Health Assessments in Primary Care, September 2003, AHRQ

7.  See <http://tools.acc.org/ASCVD-Risk-Estimator-Plus>

8.  See
    <https://www.sciencedirect.com/science/article/pii/S0735109718390363?via%3Dihub>

9.  FHIR Patient Reported Outcomes Implementation Guide available from
    <http://hl7.org/fhir/us/patient-reported-outcomes/2019May/pro-overview.html>

10. However, we might recommend simply persisting the
    QuestionnaireResponse resource returned by the Assessor actor.

11. See
    <http://hl7.org/fhir/StructureDefinition/questionnaireresponse-signature>

12. See
    http://hl7.org/fhir/smart-app-launch/index.html\#smart-authorization-sequence

13. See
    <http://www.hl7.org/fhir/extension-questionnaireresponse-signature.html>
