# phonons-protocol

Create an `input.json` file with the information regarding the potential: 
```
{
    "config": [
        "pair_style eam/alloy \n", 
        "pair_coeff * * Fe-C-Bec07.eam Fe C\n"
    ], 
    "filename": ["/absolute/path/to/phonons-protocol/example/Fe-C-Bec07.eam"], 
    "model": "EAM", 
    "name": "Fe_C_Becquart_eam", 
    "species": ["Fe", "C"], 
    "path": "./example", 
    "element": "Fe"
}
```
The file is also available in the `example` directory. 

Execute the protocol using snakemake: 
```
snakemake --use-conda
```
