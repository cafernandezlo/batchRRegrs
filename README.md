# batchRRegrs
HPC version of the [RRegrs](https://github.com/enanomapper/RRegrs "RRegrs") package . Ready to launch in [SLURM](http://slurm.schedmd.com/ "SLURM")

We forked and modified the original [RRegrs](https://github.com/enanomapper/RRegrs "RRegrs") in serveral different ways in order to add following capabilites:

* Type your SLURM call in the executeBatchRRegrs.sh file
  * You can call individually Machine Learning methods, or several of them at the same time:
  
`sbatch -N 1 -n launcher.sh "c('LM')"...` or `sbatch -N 1 -n launcher.sh "c('LM','ENET',...)"...`

* You are able to run your experimental designs with a Train dataset (internal cross-validation for tuning the best parameters) and to validate your model using and external completely unknown Validation dataset by completing the call with the following:

`sbatch -N 1 -n 1 launcher.sh "c('LM')" path_to/train.file.csv path_to/validation.file.csv path_to/results`

* We completely remove the code for plotting the performance of the models from the original [RRegrs](https://github.com/enanomapper/RRegrs "RRegrs") and we just keep directly the models in the HDD and save the final vectors (Train and Validation) in order to externally compare the performance of the models and calculate the performance score.

* Please, take into consideration that noCores = 0 means that you can control the number of cores directly from the [SLURM](http://slurm.schedmd.com/ "SLURM") call

## How to cite:
`1. Under Review`

`2. Tsiliki, G., Munteanu, C. R., Seoane, J. A., Fernandez-Lozano, C., Sarimveis, H., & Willighagen, E. L. (2015). RRegrs: an R package for computer-aided model selection with multiple regression models. Journal of Cheminformatics, 7, 46. http://doi.org/10.1186/s13321-015-0094-2`
