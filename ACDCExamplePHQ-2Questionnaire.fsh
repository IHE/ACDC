Instance:       ACDCExamplePHQ-2Questionnaire
InstanceOf:     ACDCQuestionnaire
Title:          "IHE ACDC Example Questionnaire for PHQ-2"
* id = "ihe-acdc-example-PHQ-2-questionnaire"
* extension[http://ihe.net/fhir/ACDC/StructureDefinition/questionnaire-launchurl].valueUri = "https://example.com/launch/PHQ-2"
* url = "http://example.com/PHQ-2"
* name = "PHQ-2"
* title = "Patient Health Questionnaire-2"
* date = "2020-02-15"
* publisher = "Integrating the Healthcare Enterprise (IHE)"
* purpose = "The PHQ-2 is the ultra-brief depression measure (using first 2 items of PHQ-9) and ranges from 0-6. Most who use the short PHQ-2 use it for screening and not for monitoring depression"
* description = "Implements the PHQ-2 Depression Screening Assessment Instrument as a FHIR Questionnaire Resource"
* code = http://loinc.org#55757-9
* code.display = "Patient Health Questionnaire 2 item (PHQ-2) [Reported]"
* item[0].linkId = "PHQ-2"
* item[0].text = "Over the last 2 weeks, how often have you been bothered by the following problems?"
* item[0].type = #display
* item[1].linkId = "Question-1"
* item[1].type = #choice
* item[1].text = "Little interest or pleasure in doing things?"
* item[1].code = http://loinc.org#44250-9 "Little interest or pleasure in doing things"
* item[1].answerOption[0].valueCoding = http://loinc.org#LA6568-5
* item[1].answerOption[0].valueCoding.display = "Not at all"
* item[1].answerOption[1].valueCoding = http://loinc.org#LA6569-3
* item[1].answerOption[1].valueCoding.display = "Several days"
* item[1].answerOption[2].valueCoding = http://loinc.org#LA6570-1
* item[1].answerOption[2].valueCoding.display = "More than half the days"
* item[1].answerOption[3].valueCoding = http://loinc.org#LA6571-9
* item[1].answerOption[3].valueCoding.display = "Nearly every day"
* item[2].linkId = "Question-2"
* item[2].type = #choice
* item[2].text = "Feeling down, depressed, or hopeless?"
* item[2].code = http://loinc.org#44255-8 "Feeling down, depressed, or hopeless?"
* item[2].answerOption[0].valueCoding = http://loinc.org#LA6568-5
* item[2].answerOption[0].valueCoding.display = "Not at all"
* item[2].answerOption[1].valueCoding = http://loinc.org#LA6569-3
* item[2].answerOption[1].valueCoding.display = "Several days"
* item[2].answerOption[2].valueCoding = http://loinc.org#LA6570-1
* item[2].answerOption[2].valueCoding.display = "More than half the days"
* item[2].answerOption[3].valueCoding = http://loinc.org#LA6571-9
* item[2].answerOption[3].valueCoding.display = "Nearly every day"
* item[3].linkId = "Assessment"
* item[3].type = #integer
* item[3].readOnly = true
* item[3].text = "Patient health questionnaire 2 item total score [Reported]"
* item[3].code = http://loinc.org#55758-7
* item[3].code.display = "Patient health questionnaire 2 item total score"

