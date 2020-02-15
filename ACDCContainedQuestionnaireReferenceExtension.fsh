  Extension:      ACDCContainedQuestionnaireReferenceExtension
  Id:             ihe-acdc-contained-questionnairereference
  Title:          "IHE ACDC Contained Questionnaire Reference Extension"
  Description:    "Defines the Contained Questionnaire Reference URL Extension used on QuestionnaireResponse Resources used by the IHE ACDC Profile"
  * value[x] only Reference(Questionnaire)
  * valueReference 1..1
  * valueReference only Reference(Questionnaire)
  * valueReference obeys invariant-2