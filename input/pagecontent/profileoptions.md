### Profile Options
This profile provides three options:

<a name="item-option"> </a>
#### Questionnaire Item Retrieval Option
The Questionnaire Item Retrieval option enables systems to interpret the content of the returned Questionnaire
resources using their own Questionnaire handling interface.

A Clinical Knowledge Resource Repository that implements the Questionnaire Item Retrieval Option shall include
the necessary information in Questionnaire.item fields in the returned Questionnaire resource to enable execution
of the assessment instrument.

<a name="assessor-option"> </a>
#### Assessor Option
The Assessor Option enables a Clinical Knowledge Resource Repository to provide Assessment capabilities for applications
which cannot provide their user interface to implement the user interactions described by the Questionnaire resource.

A Clinical Knowledge Resource Repository that implements the Assessor Option shall be grouped with an
Assessor actor that is able to perform the assessments it provides.

<a name="ehrlaunch-option"> </a>
#### EHR Launch Option
The EHR Launch Option allows assessments to be performed using the SMART on FHIR EHR Launch workflow from
the providers EHR system.

##### EHR Launch Requirements on Clinical Knowledge Resource Repository
A Clinical Knowledge Resource Repository that implements the EHR Launch Option shall include at least one
launch-url extension in Questionnaire resources to tell the receiver how to launch a SMART on FHIR application
that will implement the assessment.  That assessor must implement the FHIR EHR Launch Option.

##### EHR Launch Requirements on Assessment Requester
An Assessment Requester that implements the EHR Launch option shall initiate a SMART on FHIR EHR Launch protocol
via the launch url associated with the assessment.

##### EHR Launch Requirements on Assessor
An Assessor that implements the EHR Launch option supports initiation of the assessment via the SMART on FHIR EHR
Launch protocol and allows specification of the canonical url of the Questionnaire resource in the def parameter
of the launch url.
