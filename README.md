# Computational-Neuroscience-Research

# MATLAB Files

This repository contains MATLAB files for Computational-Neuroscience Research Porjects

##  Interpretation and Exploration

- 'spiketriggeredavg.m': This MATLAB code is part of a project focused on investigating the encoding process of the H1 motion-sensitive neuron in the fly, specifically the Calliphora vicina species. The objective is to compute the spike-triggered average of the neuron's response to a motion stimulus represented by a stimulus vector (rho) and to determine the relevant features within the stimulus. The provided code initializes the necessary parameters, extracts time windows preceding each spike, and calculates the spike-triggered average. Additionally, it plots the resulting average for visual analysis. The code adheres to good programming practices by modularizing the functionality into a function (spiketriggeredavg) with well-defined inputs and outputs. The script demonstrates proficiency in handling neurophysiological data and leverages MATLAB's vectorized operations for efficiency in spike-triggered average computation.
  
  ![spiketriggeredavg](https://github.com/mduezguen3/Computational-Neuroscience-Research/assets/131891739/0e3e5255-93a3-43b9-837b-60ece1ed916e)

## Images 

- Spike-Triggered Average.png
  ![Spike-Triggered Average Figure 1](https://github.com/mduezguen3/Computational-Neuroscience-Research/assets/131891739/bf03791a-4c24-4a61-b79b-cc1182faf5b6)

##  Interpretation and Exploration

- 'poissonneuronmodels.m': This MATLAB script is designed for analyzing the firing characteristics of simulated neurons in response to air velocity stimuli, mimicking the behavior of cricket cercal organs. The code presents tuning curves for four neurons ('neuron1' through 'neuron4') by plotting their mean firing rates against the stimulus direction. It calculates the maximum firing rate ('rmax') and utilizes it to compute a population vector ('normalizedpopvec') representing the collective neural response. The angle of this vector is determined and normalized to fall within the range [0, 360) degrees. The script provides a comprehensive visualization of neural tuning and population coding. Additionally, it has been adapted to accept firing rate data from experimental trials, offering versatility in analyzing real-world neural responses. The code demonstrates proficiency in MATLAB plotting functions, statistical analysis, and neural coding concepts.
  
  ![poissonneuronmodels](https://github.com/mduezguen3/Computational-Neuroscience-Research/assets/131891739/5a4491c5-d1f0-4aa7-81c9-4b362aaa34af)


## Images 

- Tuning Curve of Neurons vs Stimulus Figures
  ![Tuning Curve of Neurons vs Stimulus figures](https://github.com/mduezguen3/Computational-Neuroscience-Research/assets/131891739/34f3bebc-4fde-45b9-b32d-800aaa8b1ec5)
  ![outputresultsfrompoissonneuronmodels](https://github.com/mduezguen3/Computational-Neuroscience-Research/assets/131891739/849a2151-80f3-49f6-9a0e-e2e4ecc9929c)


