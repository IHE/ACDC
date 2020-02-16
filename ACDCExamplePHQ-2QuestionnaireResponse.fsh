Instance:       ACDCExamplePHQ-2QuestionnaireResponse
InstanceOf:     ACDCQuestionnaireResponse
Title:          "IHE ACDC Example Questionnaire for PHQ-2"
* id = "ihe-acdc-example-PHQ-2-questionnaireresponse"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8e214253-9ad3-479e-82b4-98fc50914c06"
* questionnaire = "http://example.com/PHQ-2"
* questionnaire.extension[http://ihe.net/fhir/ACDC/StructureDefinition/ihe-acdc-contained-questionnairereference].valueReference.reference = "#contained-questionnaire"
* status = #completed
* subject.reference = "Patient/example"
* subject.display = "Peter James Chalmers"
* encounter.reference = "Encounter/example"
* encounter.display = "Encounter with patient @example"
* authored = "2020-02-15T23:13:35-05:00"
* author.reference = "Practitioner/example"
* author.display = "Dr. Adam Careful"
* source.reference = "Patient/example"
* source.display = "Peter James Chalmers"
* item[0].linkId = "PHQ-2"
* item[0].text = "Over the last 2 weeks, how often have you been bothered by the following problems?"
* item[1].linkId = "Question-1"
* item[1].text = "Little interest or pleasure in doing things?"
* item[1].answer.valueCoding = http://loinc.org#LA6570-1
* item[1].answer.valueCoding.display = "More than half the days"
* item[2].linkId = "Question-2"
* item[2].text = "Feeling down, depressed, or hopeless?"
* item[2].answer.valueCoding = http://loinc.org#LA6569-3
* item[2].answer.valueCoding.display = "Several days"
* item[3].linkId = "Question-2"
* item[3].text = "Patient health questionnaire 2 item total score"
* item[3].answer.valueInteger = 3
