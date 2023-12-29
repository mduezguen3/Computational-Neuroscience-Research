# Computational-Neuroscience-Research

# MATLAB Files

This repository contains MATLAB files for Computational-Neuroscience Research Porjects

##  Interpretation and Exploration

- 'spiketriggeredavg': This MATLAB code is part of a project focused on investigating the encoding process of the H1 motion-sensitive neuron in the fly, specifically the Calliphora vicina species. The objective is to compute the spike-triggered average of the neuron's response to a motion stimulus represented by a stimulus vector (rho) and to determine the relevant features within the stimulus. The provided code initializes the necessary parameters, extracts time windows preceding each spike, and calculates the spike-triggered average. Additionally, it plots the resulting average for visual analysis. The code adheres to good programming practices by modularizing the functionality into a function (spiketriggeredavg) with well-defined inputs and outputs. The script demonstrates proficiency in handling neurophysiological data and leverages MATLAB's vectorized operations for efficiency in spike-triggered average computation.
  [Uploading spiketriggeredavg.m…]()function [sampling_periodmsfinal, num_timesteps, num_spikesavg, sta] = spiketriggeredavg(samplingrate, windowwidth, rho)
    %sampling period initialization
    % units in hertz
    % time between samples is equal to 1 over the sampling rate
    sampling_period = 1 / samplingrate;
    sampling_periodms = sampling_period * 1000;
    sampling_periodmsfinal = round(sampling_periodms);

    % calculate the number of time steps
    num_timesteps = round(windowwidth / sampling_periodmsfinal);

    % Initialize variables
    num_spike = 0;
    vector = [];

    % Initialize spike-triggered average
    sta = zeros(1, num_timesteps);

    % Find spike indices
    spike_times = find(rho == 1);

    % Loop over spike times and extract time windows
    for i = 1:length(spike_times)
        spike_index = spike_times(i);
        
        % Ensure the time window is within the bounds of the stimulus vector
        if spike_index > num_timesteps && spike_index <= length(rho)
            window = rho((spike_index - num_timesteps):spike_index - 1);
            sta = sta + window;
            num_spike = num_spike + 1;
            vector = [vector, rho(spike_index)];
        end
    end

    % Compute the mean of the time windows
    sta = sta / length(spike_times);

    % Plot the spike-triggered average using plot
    figure;
    timesteps = 1:num_timesteps;
    plot(timesteps, sta);
    title('Spike-Triggered Average');
    xlabel('Time Steps');
    ylabel('Average Stimulus Value');

    % Output variables
    num_spikesavg = num_spike;
end

## Images 

- Spike-Triggered Average.png
  ![Spike-Triggered Average Figure 1](https://github.com/mduezguen3/Computational-Neuroscience-Research/assets/131891739/bf03791a-4c24-4a61-b79b-cc1182faf5b6)

