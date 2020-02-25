<style type="text/css">
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "15.1";
}</style>

This section defines the actors and transactions in
this profile. General definitions of actors are given in the Technical
[Frameworks General Introduction Appendix A(http://www.ihe.net/Technical_Framework/index.cfm).
Figure 15.1-1 below shows the actors directly involved in the ACDC Profile and
the relevant transaction between them.

![ACDC Actor Diagram](ActorsAndTransactions.svg "ACDC Actor Diagram")
<div style="clear: left"/>
**Figure 15.1-1: ACDC Actor Diagram**

Table 15.1-1 lists the transactions for each actor directly involved in
the ACDC Profile. To claim compliance with this profile, an actor shall
support all required transactions (labeled "R") and may support the
optional transactions (labeled "O").

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<caption><b>Table 15.1-1: ACDC Integration Profile - Actors and Transactions</b></caption>
<thead>
<tr class="odd" style='background: gray;'>
<th>Actors</th>
<th>Transactions</th>
<th>Optionality</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Clinical Knowledge Resource Repository</td>
<td><a href='queryartifact.html'>Query Artifact [PCC-71]</a></td>
<td align='center'>R</td>
</tr>
<tr class="even">
<td>Artifact Consumer</td>
<td><a href='queryartifact.html'>Query Artifact [PCC-71]</a></td>
<td align='center'>R</td>
</tr>
<tr class="odd">
<td rowspan='2'>Assessor</td>
<td><a href='requestassessment.html'>Request Assessment [PCC-72]</a></td>
<td align='center'>R</td>
</tr>
<tr class="even">
<td><a href='reportassessment.html'>Report Assessment [PCC-73]</a></td>
<td align='center'>R</td>
</tr>
<tr class="odd">
<td rowspan='2'>Assessment Requestor</td>
<td><a href='requestassessment.html'>Request Assessment [PCC-72]</a></td>
<td align='center'>R</td>
</tr>
<tr class="even">
<td><a href='reportassessment.html'>Report Assessment [PCC-73]</a></td>
<td align='center'>R</td>
</tr>
</tbody>
</table>

### Actor Descriptions and Actor Profile Requirements

#### Clinical Knowledge Resource Repository

The Clinical Knowledge Resource Repository in this profile responds to
FHIR-based queries for one or more clinical knowledge artifacts.

1.  Given that a Clinical Knowledge Resource Repository provides an
    assessment instrument that a healthcare provider can use to assess a
    given condition or health concern, it must provide a mechanism by
    which that assessment can be performed on a given patient. This can
    be implemented in one of three ways:

    1.  The Clinical Knowledge Resource Repository implements the
        Questionnaire Item Retrieval option, which enables the
        healthcare provider's Health IT system to execute the assessment
        instrument with the Assessor of its choice, or

    2.  The Clinical Knowledge Resource Repository implements the
        Assessor option; it must be grouped with an Assessor that the
        healthcare provider's Health IT system can use to execute the
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

#### Artifact Consumer

The Artifact Consumer in this profile sends FHIR-based queries to the
Clinical Knowledge Resource Repository to search for and obtain one or
more clinical knowledge artifacts. Rendering and further processing of
these artifacts is defined by the Assessor and Assessment Requester in
this profile.

1.  Given that a user with appropriate permissions is operating the
    provider's health IT system, when a new assessment instrument is
    needed, then the user can locate an appropriate assessment
    instrument, and configure that health IT system to use it to capture
    an assessment.

2.  A healthcare provider's health IT system must be able to support
    assessments from a Clinical Knowledge Resource Repository that
    implements the Questionnaire Retrieval Option.

3.  A healthcare provider's health IT system must be able to support
    assessments from a Clinical Knowledge Resource Repository that
    implements the Assessor Option.

#### Assessor

The Assessor in this profile performs an assessment and reports the
results as a QuestionnaireResponse to the appropriate patient and
encounter. It must populate the QuestionnaireResponse resource with the
appropriate references to the subject, encounter, author and
questionnaire resources. The subject, encounter, and author resources
must be obtained from the current context of the Assessor actor. The
questionnaire resource should be represented by the canonical url which
uniquely identifies the assessment instrument.

#### Assessment Requestor

The Assessment Requester in this profile requests an assessment of an
assessor and processes results returned in a QuestionnaireResponse
resource. It must accept an assessment as a QuestionnaireResponse
resource from the Assessor actor.

## ACDC Required Actor Groupings
{: style="--heading-prefix: '15.3'"}

<table border='1' style="border: 1px solid black; border-collapse: collapse">
<caption><b>Table 15.3-1: ACDC - Required Actor Groupings</b></caption>
<thead>
<tr class="odd" style="background: gray">
<th>ACDC Actor</th>
<th>Actor to be grouped with</th>
<th>Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Assessment Requestor</td>
<td>Secure Node or Secure Application</td>
<td>PCC TF-15.6.3</td>
</tr>
</tbody>
</table>