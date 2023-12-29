function [sampling_periodmsfinal, num_timesteps, num_spikesavg, sta] = spiketriggeredavg(samplingrate, windowwidth, rho)
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
