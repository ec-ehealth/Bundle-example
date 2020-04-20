Instance:    slicedbundle1
InstanceOf:  https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/myslicedbundle1
Title:       "SlicedBundle 1"
Description: "SlicedBundle 1"

* type = #transaction
* entry[messageHeader].resource = MessageHeader2
* entry[messageHeader].request.method = #POST
* entry[messageHeader].request.url = "Patient"
* entry[practitioner].resource = Practitioner2
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"
* entry[claim].resource = Claim2
* entry[claim].request.method = #POST
* entry[claim].request.url = "Claimt"
* entry[practitionerRole].resource = PractitionerRole2
* entry[practitionerRole].request.method = #POST
* entry[practitionerRole].request.url = "PractitionerRole"
* entry[coverage].resource = Coverage2
* entry[coverage].request.method = #POST
* entry[coverage].request.url = "Coverage"
* entry[organization].resource = Organization2
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"
* entry[patient].resource = Patient2
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

Instance: MessageHeader2
InstanceOf: MessageHeader
Usage: #inline
* eventCoding = #test
* source.endpoint = "testuri"

Instance: Practitioner2
InstanceOf: Practitioner
Usage: #inline
* name.text = "Dupont"

Instance: Claim2
InstanceOf: Claim
Usage: #inline
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/id"
* identifier.value = "1111"
* status = #active
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #institutional
* subType.coding.system = "https://www.mycarenet.be/fhir/CodeSystem/agreement-types"
* subType.coding = #testtype
* use = #claim
//* patient = Reference(Patient2)
* created = "2020-04-07"
//* enterer = Reference(enterer1)
//* provider = Reference(provider1)
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal
* insurance.sequence = 1
* insurance.focal = true
//* insurance.coverage = Reference(Coverage2)

Instance: PractitionerRole2
InstanceOf: PractitionerRole
Usage: #inline
//* practitioner = Reference(Practitioner2)

Instance: Coverage2
InstanceOf: Coverage
Usage: #inline
* status = #active
//* beneficiary = Reference(Patient2)
//* payor = Reference(Patient2)

Instance: Organization2
InstanceOf: Organization
Usage: #inline
* name = "testorga"

Instance: Patient2
InstanceOf: Patient
Usage: #inline
