# phonons-protocol

Create an `input.json` file with the information regarding the potential: 
```
{
    "config": [  # Lammps parameters to load the potential
        "pair_style eam/alloy \n", 
        "pair_coeff * * Fe-C-Bec07.eam Fe C\n"
    ], 
    "filename": ["./example/Fe-C-Bec07.eam"], # location of the potential file 
    "species": ["Fe", "C"],  # Species implemented in the potential  
    "element": "Fe"  # Element selected for the test 
}
```
The file is also available in the `example` directory. 

Execute the protocol using snakemake: 
```
snakemake --use-conda
```
