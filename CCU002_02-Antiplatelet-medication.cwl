cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  aspirin-ccu002_02-antiplatelet-medication---primary:
    run: aspirin-ccu002_02-antiplatelet-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  orodispersible-ccu002_02-antiplatelet-medication---primary:
    run: orodispersible-ccu002_02-antiplatelet-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: aspirin-ccu002_02-antiplatelet-medication---primary/output
  ccu002_02-antiplatelet-medication-suspension---primary:
    run: ccu002_02-antiplatelet-medication-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: orodispersible-ccu002_02-antiplatelet-medication---primary/output
  ccu002_02-antiplatelet-medication-ticagrelor---primary:
    run: ccu002_02-antiplatelet-medication-ticagrelor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-suspension---primary/output
  ccu002_02-antiplatelet-medication-modifiedrelease---primary:
    run: ccu002_02-antiplatelet-medication-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-ticagrelor---primary/output
  efient-ccu002_02-antiplatelet-medication---primary:
    run: efient-ccu002_02-antiplatelet-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-modifiedrelease---primary/output
  ccu002_02-antiplatelet-medication-100mg---primary:
    run: ccu002_02-antiplatelet-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: efient-ccu002_02-antiplatelet-medication---primary/output
  ccu002_02-antiplatelet-medication-tablet---primary:
    run: ccu002_02-antiplatelet-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-100mg---primary/output
  ccu002_02-antiplatelet-medication-retard---primary:
    run: ccu002_02-antiplatelet-medication-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-tablet---primary/output
  ccu002_02-antiplatelet-medication-clopidogrel---primary:
    run: ccu002_02-antiplatelet-medication-clopidogrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-retard---primary/output
  ccu002_02-antiplatelet-medication-300mg---primary:
    run: ccu002_02-antiplatelet-medication-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-clopidogrel---primary/output
  ccu002_02-antiplatelet-medication-gastroresistant---primary:
    run: ccu002_02-antiplatelet-medication-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-300mg---primary/output
  ccu002_02-antiplatelet-medication-plavix---primary:
    run: ccu002_02-antiplatelet-medication-plavix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-gastroresistant---primary/output
  ccu002_02-antiplatelet-medication-liquid---primary:
    run: ccu002_02-antiplatelet-medication-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-plavix---primary/output
  ccu002_02-antiplatelet-medication-sugar---primary:
    run: ccu002_02-antiplatelet-medication-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-liquid---primary/output
  ccu002_02-antiplatelet-medication-solution---primary:
    run: ccu002_02-antiplatelet-medication-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-sugar---primary/output
  ccu002_02-antiplatelet-medication-prasugrel---primary:
    run: ccu002_02-antiplatelet-medication-prasugrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-solution---primary/output
  brilique-ccu002_02-antiplatelet-medication---primary:
    run: brilique-ccu002_02-antiplatelet-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-prasugrel---primary/output
  ccu002_02-antiplatelet-medication-dipyridamole---primary:
    run: ccu002_02-antiplatelet-medication-dipyridamole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: brilique-ccu002_02-antiplatelet-medication---primary/output
  ccu002_02-antiplatelet-medication-capsule---primary:
    run: ccu002_02-antiplatelet-medication-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-dipyridamole---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_02-antiplatelet-medication-capsule---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
