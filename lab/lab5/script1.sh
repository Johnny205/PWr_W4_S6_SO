#!/bin/bash

export XYZ="my value"
python3 -c "import os; print(os.environ['XYZ'])"