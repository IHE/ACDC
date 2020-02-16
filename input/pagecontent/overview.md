### Overview
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

**Quality Related Assessments**

![Quality Related Assessments](QualityRelatedAssessments.png "Quality Related Assessments")
<div style="clear: left"/>

Many of these instruments can be implemented using technology, as they are simple forms or questionnaires.
Some data in these instruments might be automatically populated by the EHR system.  However, because there
are so many instruments, and so many providers of the instruments, it is challenging to integrate these
instruments into provider workflows.

#### Use Cases

##### Finding an Assessment
In the first use case, a care provider organization is seeking information about assessment instruments to
address a specified condition or health concern.  Their goal is to identify instruments and eventually acquire
instruments which could be used to capture information essential to management of the care of patients having
that condition.  Their EHR will be able to perform the assessment once it has been acquired.

This use case is supported by the IHE PCC X1 Query Artifact transaction, and the IHE
PCC X2 Retrieve Artifact transaction.

##### Executing the Assessment Instrument
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
