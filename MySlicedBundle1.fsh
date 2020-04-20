Profile:        MySlicedBundle1

Parent:         Bundle

Id:             myslicedbundle1

Title:          "Test sliced bundle 1"

Description:    "description 1"

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the entry.resource type"
* entry contains messageHeader 1..1 and practitioner 1..1 and claim 1..1 and practitionerRole 1..1 and coverage 1..1 and organization 1..1 and patient 1..1
* entry[messageHeader].resource 1..1
* entry[messageHeader].resource only MessageHeader
* entry[practitioner].resource 1..1
* entry[practitioner].resource only Practitioner
* entry[claim].resource 1..1
* entry[claim].resource only Claim
* entry[practitionerRole].resource 1..1
* entry[practitionerRole].resource only PractitionerRole
* entry[coverage].resource 1..1
* entry[coverage].resource only Coverage
* entry[patient].resource 1..1
* entry[patient].resource only Patient
* entry[organization].resource 1..1
* entry[organization].resource only Organization
