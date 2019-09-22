# phonons-protocol

Create an `input.json` file with the information regarding the potential: 
```
{
    "config": [
        "pair_style eam/alloy \n", 
        "pair_coeff * * Fe-C-Bec07.eam Fe C\n"
    ], 
    "filename": [
        "./Fe-C-Bec07.eam"
    ], 
    "model": "EAM", 
    "name": "Fe_C_Becquart_eam", 
    "species": ["Fe", "C"], 
    "path": "./Fe_C_Becquart_eam/Fe/phonons", 
    "element": "Fe"
}
```

Execute the protocol using snakemake: 
```
snakemake --use-conda
```
