<style>
/* Hack to align content with IHE Profile numbering */
h2, h3, h4, h5, h6 {
    --heading-prefix: "6.7.4";
}
</style>
This extension exists to support storing reference to the actual Questionnaire resource
used during an assessment as a contained resource in the QuestionnaireResponse resource.
The existing reference to the Questionnaire at `QuestionnaireResponse.questionnaire`
must be the canonical URL of the resource. This prevents it from being a reference to
a contained resource. This extension is provided to allows the contained reference
to be pointed to in the QuestionnaireResponse resource.

In some FHIR implementations, when contained resource is not referenced by the containing
resource, it is simply removed during serialization. This is because FHIR requires
that contained resources be referenced by the containing resource. This extension supports
that reference, enabling the Questionnaire to be contained in the response.