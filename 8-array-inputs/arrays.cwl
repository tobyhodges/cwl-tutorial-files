cwlVersion: v1.0
class: CommandLineTool
inputs:
  filesA: # -A one two three
    type: string[]
    inputBinding:
      prefix: -A
      position: 1

  filesB: # -B=four -B=five -B=six
    type:
      type: array
      items: string
      inputBinding:
        prefix: -B=
        separate: false
    inputBinding:
      position: 2

  filesC: # -C=seven,eight,nine
    type: string[]
    inputBinding:
      prefix: -C=
      itemSeparator: ","
      separate: false
      position: 4

outputs: []
baseCommand: echo
