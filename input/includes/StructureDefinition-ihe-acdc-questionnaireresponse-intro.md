<style>
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "6.6.107";
}
</style>
The IHE ACDC QuestionnaireResponse Profile defines the constraints on QuestionnaireResponse resources returned by the
PCC-73 transaction.  This resource describes the QuestionnaireResponse that represents the results of an Assessment
that was performed on a patient.

## Constraints
At a minimum, QuestionnaireResponse resources that comply with this provide must provide:

questionnaire
: The canonical url of the questionnaire used to assess the patient must be present.

subject
: The patient that was assessed must be reported.

status
: On a create, the status must be "completed".  On update the status must be either
"entered-in-error" or "amended".  The "in-progress" status is not used by this profile.

encounter
: When there is a known encounter, it must be reported (an implementation Must Support reporting
of encounters).

authored
: The authored date time must be reported with precision to at least the day.

author
: The person who received and reported the answers must be reported. If the patient
or their representative reported the answers directly (e.g., into a device or through
an application), a reference to that individual shall be provided.

source
: The person who provided the answers must be reported when known (an implementation
Must Support reporting of the source).

item
: At least one item must be present unless the status is "entered-in-error" or "stopped".


