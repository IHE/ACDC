<style type="text/css">
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "15.2";
}</style>

Options that may be selected for each actor in this profile, are listed
in the Table 15.2-1. Dependencies between options when applicable are
specified in notes.

**Table 15.2-1: ACDC - Actors and Options**
<table border="1" style="border: 1px solid black; border-collapse: collapse">
<thead>
<tr class="odd" style="background: gray; ">
<td>Actor</td>
<td>Option Name</td>
</tr>
</thead>
<tbody>
<tr class="odd">
<td rowspan="3">Clinical Knowledge Resource Repository</td>
<td><a href="#item-retrieval-ckrr">Questionnaire Item Retrieval Option</a><sup>1</sup></td>
</tr>
<tr class="even">
<td><a href="#assessor">Assessor Option</a><sup>1</sup></td>
</tr>
<tr class="odd">
<td><a href="#ehr-launch-a">EHR Launch Option</a><sup>1</sup></td>
</tr>
<tr class="even">
<td>Artifact Consumer</td>
<td>None Defined</td>
</tr>
<tr class="odd">
<td>Assessment Requestor</td>
<td><a href="#ehr-launch-ar">EHR Launch Option</a></td>
</tr>
<tr class="even">
<td>Assessor</td>
<td><a href="#ehr-launch-a">EHR Launch Option</a></td>
</tr>
</tbody>
</table>

Note 1: At least one of these options shall be supported by the related
actor

<span id="item-retrieval"> </span>
### Questionnaire Item Retrieval Option

The Questionnaire Item Retrieval option enables systems to interpret the
content of the returned Questionnaire resources using their own
Questionnaire handling interface.

<span id="item-retrieval-ckrr"> </span>
#### Clinical Knowledge Resource Repository

A Clinical Knowledge Resource Repository that implements the
Questionnaire Item Retrieval Option shall include the necessary
information in Questionnaire.item fields in the returned Questionnaire
resource to enable execution of the assessment instrument.

<span id="assessor"> </span>
### Assessor Option

The Assessor Option enables a Clinical Knowledge Repository to provide
Assessment capabilities for applications which cannot provide their user
interface to implement the user interactions described by the
Questionnaire resource.

A Clinical Knowledge Resource Repository that implements the Assessor
Option shall be grouped with an Assessor actor that is able to perform
the assessments it provides.

<span id="ehr-launch"> </span>
### EHR Launch Option

The EHR Launch Option allows assessments to be performed using the SMART
on FHIR EHR Launch workflow from the providers EHR system.

<span id="ehr-launch-ckrr"> </span>
#### EHR Launch Requirements on Clinical Knowledge Resource Repository

A Clinical Knowledge Resource Repository that implements the EHR Launch
Option shall include at least one launch-url extension in Questionnaire
resources to tell the receiver how to launch a SMART on FHIR application
that will implement the assessment. That assessor must implement the
FHIR EHR Launch Option.

<span id="ehr-launch-ar"> </span>
#### EHR Launch Requirements on Assessment Requester

An Assessment Requester that implements the EHR Launch option shall
initiate a SMART on FHIR EHR Launch protocol via the launch url
associated with the assessment.

<span id="ehr-launch-a"> </span>
#### EHR Launch Requirements on Assessor

An Assessor that implements the EHR Launch option supports initiation of
the assessment via the SMART on FHIR EHR Launch protocol and allows
specification of the canonical url of the Questionnaire resource in the
def parameter of the launch url.
