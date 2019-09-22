rule all:
    input:
        "output_file.json"
        "plot.nbconvert.ipynb"

rule phonons:
    input:
        "input_file.json"
    output:
        "output_file.json"
        "plot.nbconvert.ipynb"
    conda:
        "envs/phonons.yaml"
    shell:
        "papermill ./scripts/script.ipynb -k 'python3' -p input_file 'input.json' -p output_file 'output.json'; papermill ./scripts/plot.ipynb plot.nbconvert.ipynb -k 'python3' -p input_file 'output.json'"
