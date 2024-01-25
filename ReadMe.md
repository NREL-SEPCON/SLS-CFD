# Dynamic Filtration CFD simulation
This repo contains files to demonstrate the cfd simulation of dynamic filtration process and the prediction of energy consumption attributed to fluid-disc interaction.
## Usage
1. You should have [OpenFOAM 10](https://openfoam.org/version/10/) installed in your system.
2. unzip file `constant/triSurface.zip`. You should have a file structure of `constant/triSurface/*.stl`
3. Run the script `runSimulation.sh` file.

    3.1. To use a differetn material, change the physical properties specified in file `constant/physicalProperties`.

Note: The cfd simulation task for the disc filtration unit is computationally intensive. The script file I provided is only a simple instruction which runs the simulation with a single thread. I would use at least 104 cores (one node on [Kestrel](https://www.nrel.gov/hpc/kestrel-computing-system.html)) to attempt to run actual simulations. This simulation also requires large amount of ram. So, it is not recommended to run this simulation on laptop/PC. 

