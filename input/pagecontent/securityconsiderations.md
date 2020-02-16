### Security Considerations
See
[ITI TF-2.x Appendix Z.8 "Mobile Security Considerations"](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=9
"Mobile Security Considerations") for general background on "Mobile" security considerations, and recommendations regarding security.

The ACDC profile provides an API for accessing data element level details that are identifiable to a specific patient. All the data
communicated, including the query parameters, should be considered patient identifiable information (PII). Assessments may also
include information protected about other individuals and should be considered individually identifiable information (III).  The
grouping with IUA, or some similar user authentication and authorization solution, is critical for enforcing privacy and security
requirements. All accesses to this data should be recorded as audit log for security surveillance and privacy reporting. These
topics are discussed in Appendix Z.8 with recommendations.

Some data being exchanged in this profile represent the execution of an assessment, a validated instrument, for a patient.  The data
 in this can affect decision treatments, and so may need additional protection against data integrity and data authenticity risks.
 To mitigate data integrity and data authenticity risks, the Assessor may include a questionnaireresponse-signature  extension on
 the QuestionnaireResponse, or on selected QuestionnaireResponse.item elements.

Assessment instruments are intellectual property which owners may wish to protect in various ways, e.g., licensing agreements,
copyright restrictions, et cetera.  As such the content of the assessment instrument should be encrypted during exchange.
Accessors of assessment instruments may need to authenticate themselves in some way before being able to access assessment
instruments.  Access to specific assessment instrument content that may be implemented by a user can have financial or
contractual ramifications for that user (e.g., incur charges), and should therefore be logged by both the owner and receiver
of the content.

A Health IT system that is configured to support a new assessment instrument has had a significant change in functionality
that should be logged.

This profile makes use of the SMART on FHIR EHR Launch protocol, and some implementations may also use the SMART on FHIR
Standalone Launch protocol.  Use of these protocols relies on OAuth2, HTTPS and TLS communications, ensuring authentication,
authorization and encryption during exchanges involving PHI or III.

