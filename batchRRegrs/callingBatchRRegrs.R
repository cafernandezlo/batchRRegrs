library(caret)
library(corrplot)
library(glmnet)
library(kernlab)
library(doMC)
library(data.table)
library(batch)

parseCommandArgs()

fenet<-'ENET' %in% methodsList
flm<-'LM' %in% methodsList
fglm<-'GLM' %in% methodsList
fpls<-'PLS' %in% methodsList
flasso<-'LASSO' %in% methodsList
fsvrm<-'SVMRadial' %in% methodsList
fnn<-'NN' %in% methodsList
frf<-'RF' %in% methodsList
frfrfe<-'RFRFE' %in% methodsList
fsvmrfe<-'SVMRFE' %in% methodsList

setwd('~/batchRRegrs')
source('batchRRegrs.R')

RRegrsResults = simpleRRegrs(DataFileName = datafilename, OutValidationFile = outvalidationfile,
                       PathDataSet=pathdataset,
                       fDet="F",fFilters="F",fScaling="F",fRemNear0Var="F",fRemCorr="F",iScaling=1,iScalCol=1,fOutVal = "T",
                       fENET=fenet,fLM=flm,fGLM=fglm,fPLS=fpls,fLASSO=flasso,fSVRM=fsvrm,fNN=fnn,fRF=frf,fRFRFE=frfrfe,fSVMRFE=fsvmrfe,
                       CVtypes = "repeatedcv",
                       iSplitTimes = 1, noYrand = 0,
                       noCores = 0)
