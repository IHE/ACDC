<style type="text/css">
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "15.6";
}</style>

### PCC QEDm - Query for Existing Data for Mobile

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

### ITI PDQm - Patient Demographics Query for Mobile

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

### ITI ATNA - Audit Trail and Node Authentication

The Assessment Requester actor in this profile must be grouped with a
Secure Node or Secure Application actor. All other actors in this
profile may be grouped with the Secure Node or Secure Application
actors. The Assessor actor should be grouped with the Secure Node or
Secure Application actor. The Clinical Knowledge Resource Repository and
Artifact Consumer actors may also be grouped with the Secure Node or
Secure Application actors.