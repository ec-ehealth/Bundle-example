Profile:        BePractitionerRole

Parent:         PractitionerRole

Id:             be-practitionerrole

Title:          "Practitioner Role core BE profile"

Description:    "Belgian federal profile for a practitioner role. Initially based on the functional description of the NIHDI."

* practitioner only Reference(Practitioner)

* organization only Reference(Organization)

* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code contains CD-HCPARTY 0..* MS and SNOMED-CT 0..* MS
* code[CD-HCPARTY].coding.system = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty" (exactly)
* code[CD-HCPARTY].coding.system 1..1
* code[CD-HCPARTY].coding.code 1..1	
* code[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* code[SNOMED-CT].coding.system 1..1
* code[SNOMED-CT].coding.code 1..1
* code ^definition = """
	Roles which this practitioner is authorized to perform for the organization.

	For compatibility reasons, CD-HCPARTY is described here to express the role of the practitioner. Other coding systems remain allowed. Towards the future, the use of SNOMED-CT codes is also RECOMMENDED here. 
	In the future, other ways to codfy might however be also proposed.

	When available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system.
	"""
	
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains SNOMED-CT 0..*
* specialty[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* specialty[SNOMED-CT].coding.system 1..1
* specialty[SNOMED-CT].coding.code 1..1	
