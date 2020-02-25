
## Referencing the Questionnaire Inline
The Assessor actor may with to return a copy of the Questionnaire with the response as a contained
resource.  This enables the Assessment Requestor actor to operate with complete knowledge
of the assessment being performed, which can aid in operations, and prevent the need
to retrieve a copy of the assessment instrument.  It also insures that the assessor
has a copy of the exact instrument used, given that assessment instruments may be updated
over time.

Because the reference to the Questionnaire at `QuestionnaireResponse.questionnaire`
must be the canonical URL of the resource, the
[ACDC Contained Questionnaire Reference](StructureDefinition-ihe-acdc-contained-questionnairereference.html)
extension has been provided which allows the contained reference to be pointed to in the
QuestionnaireResponse resource.

In JSON, this is represented using a special syntax to support the extension because Reference
is a primitive type.  An example is given below.
~~~
  "questionnaire": "http://example.com/PHQ-2",
  "_questionnaire": {
    "extension": [
      {
        "url": "http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-contained-questionnairereference",
        "valueReference": {
          "reference": "#contained-questionnaire"
        }
      }
    ]
  }
~~~

In XML, this would be represented as shown below:
~~~
   <questionnaire value="http://example.com/PHQ-2">
      <extension url="http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-contained-questionnairereference">
         <valueReference value="#contained-questionnaire"/>
      </extension>
   </questionnaire>
~~~

This extension is provided because some FHIR implementations do not send contained resources
which are not directly referenced by the resource in which they are contained (e.g.,
HAPI on FHIR).  This does not represent an error on behalf of those implementations,
but rather an interpretation of the FHIR requirements that state that contained resources
must be referenced by the resource that contains them.

## Security Concerns
Assessment results contained in a QuestionnaireResponse often have very sensitive data,
not just health data, but also sensitive data regarding information such as social determinants
of health, which could include education level, income level, access to housing or food,
et cetera. Such data should be encrypted in transit (e.g., using TLS as per the requirements
of the ATNA Secure Node actor), and may also need to be encrypted or marked sensitive
when stored.

