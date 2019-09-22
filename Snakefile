rule script:
    input:
        "input.json"
    output:
        "output.json",
        "plot.nbconvert.ipynb"
    conda:
        "envs/phonons.yaml"
    shell:
        "papermill ./scripts/script.ipynb script.nbconvert.ipynb -k 'python3' -p input_file 'input.json' -p output_file 'output.json'; papermill ./scripts/plot.ipynb plot.nbconvert.ipynb -k 'python3' -p input_file 'output.json'"
