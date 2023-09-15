name: Submit a bug report
description: If you are having an issue and cant fix it
body:
  - type: input
    id: build
    attributes:
      label: Build used
      description: >-
        Required: The LineageOS build you flashed (file name will work)
    validations:
      required: true
  - type: input
    id: model
    attributes:
      label: Model number
      description: >-
        Required: The model of phone you have (zerofltexx or G920F will work)
    validations:
      required: true
  - type: textarea
    id: describe
    attributes:
      label: Describe the bug
      description: >-
        Required: Give a detailed description on the bug you're facing. The more details
        the better
      placeholder: When I try to...
    validations:
      required: true
  - type: textarea
    id: additionalinfo
    attributes:
      label: Any extra info
      description: >-
        Add any other context about the problem here, like hardware/software
        information you think might make this easier to diagnose.
