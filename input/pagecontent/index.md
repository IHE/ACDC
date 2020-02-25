
The IHE Assessment Curation and Data Collection (ACDC) profile supports the selection
of assessment instruments from a repository and the integration of those instruments
into a provider workflow for the capture of assessment data for a given patient.

This implementation guide provides the FHIR Implementation materials associated with
this IHE profile.  This guide includes content from the IHE ACDC Profile Supplement,
however, the IHE published PDF content for this supplement is considered to be the
normative content.

This guide is organized into three main sections:

1. Volume I: [Overview](overview.html)
    1. [Actors and Transactions](actorsandtransactions.html)
    2. [Profile Options](profileoptions.html)
    3. [Security Considerations](securityconsiderations.html)
    4. [Cross Profile Considerations](crossprofileconsiderations.html)
2. Volume II: [Transactions](transactions.html)
    1. [[PCC-71] Query Artifact](queryartifact.html)
    2. [[PCC-72] Request Assessment](requestassessment.html)
    3. [[PCC-73] Report Assessment](reportassessment.html)
3. Volume III: [Content Profiles](contentprofiles.html)
    1. [ACDC Questionnaire Resource FHIR Profile](StructureDefinition-ihe-acdc-questionnaire.html "Questionnaire")
    2. [ACDC QuestionnaireResponse Resource FHIR Profile](StructureDefinition-ihe-acdc-questionnaireresponse.html "QuestionnaireResponse")
    3. [Launch URL Extension](StructureDefinition-questionnaire-launchurl.html)
    4. [Contained Questionnaire Reference Extension](StructureDefinition-ihe-acdc-contained-questionnairereference.html)

In addition, [ITI Appendix Z](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf) has
been [rendered as HTML](appendixz.html) as an aid to the reader.

Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [https://github.com/IHE/ACDC](https://github.com/IHE/ACDC).
