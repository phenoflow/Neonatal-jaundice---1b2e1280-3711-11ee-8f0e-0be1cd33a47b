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
  perinatal-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary:
    run: perinatal-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-anaemia---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-anaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: perinatal-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-anaemia---primary/output
  excessive-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary:
    run: excessive-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-haemolysis---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-haemolysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: excessive-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-conjugation---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-conjugation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-haemolysis---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-specified---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-conjugation---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-inhibitor---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-inhibitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-specified---primary/output
  congenital-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary:
    run: congenital-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-inhibitor---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-bilirubin---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-bilirubin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: congenital-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-damage---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-damage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-bilirubin---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-hepatitis---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-hepatitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-damage---primary/output
  fetal-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary:
    run: fetal-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-hepatitis---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-kernicterus---primary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-kernicterus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: fetal-neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary/output
  neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---secondary:
    run: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn-kernicterus---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---secondary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
