# phiPrediction

This repository contains code, data, and appendices for the following publication:

I. Kosesoy et al, "Prediction of Host-Pathogen Protein Interactions Using Extended Network Model"


### Data folders:

  - "Bacillus", "Yersinia" folders have the same file hierarchy. The description of each file and folder is as follows:
    - arff files : Final data files that can be used with Weka software.The name of the files is self-declared. For example bacillusM_aac.arff is data file of enm method encoded with aac protein-encoding. 
    - Raw data files can be found in the "interactionsSequencesFiles" folder. This folder contains the amino acid sequences of the proteins (files with the .fa extension) for each organism. Host-host (HH), Pathogen-pathogen interactions are given in .tsv extension files. The data is also given in .mat format. 
    - The results folder contains the weka classification result for each method.
    - The "featureFiles" folder contains intraspecies interactions and non-interacted samples in arff and mat format.
    
  - "Merged" folder contains the merged data sets of bacillus anthracis and yersinia pestis. All files are in arff format. 


### Code Folders:

  - ProteinEncoding:  A Matlab toolbox of representing or encoding protein sequences as numerical vectors. The toolbox is downloaded from the https://sourceforge.net/projects/proteinencoding/ Citation: Zhang, W. & Ke, M.. (2014). Protein encoding: A Matlab toolbox of representing or encoding protein sequences as numerical vectors for bioinformatics. Journal of Chemical and Pharmaceutical Research. 6. 2000-2007. We have used this toolbox for AAC and AAP protein encoding methods. The codes of the LBE encoding are located outside the Protein encoding folder. Feature vectors of the dataset are generated with the "genFeatureMatrix" function.    
  - mat2arff : A function to convert mat files to arff files
  - distFeature.m, subSequences.m : functions for LBE method
  - findSequenceMain: main function of protein encoding.  


### Appendix:
  - Section A: Feature encoding methods
  - Section B: Prediction methods
  - Section C: Standard deviation results



### Std Results:

The std result file, contains the standard deviation of the metrics found after each fold.



