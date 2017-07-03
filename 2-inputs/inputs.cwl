cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo
inputs:
  example_flag: # -f as a on/off flag
    type: boolean
    inputBinding:
      position: 1
      prefix: -f
  example_string: # --example-string as a string option
    type: string
    inputBinding:
      position: 3
      prefix: --example-string
  example_int: # -i<integer>
    type: int
    inputBinding:
      position: 2
      prefix: -i
      separate: false
  example_file: # optional file with --file=<filename>
    type: File?
    inputBinding:
      prefix: --file=
      separate: false
      position: 4

outputs: []
