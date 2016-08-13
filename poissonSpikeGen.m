function [ spikeMat, tVec ] = poissonSpikeGen( fr, tSim, nTrials )
%POISSONSPIKEGEN Summary of this function goes here
% Simulates a neuron spike train using poisson process
%   fr = firing rate
%   tSim = length of simulation
%   nTrials = number of trials

dt = 1/1000; % spike trains are represented in ms
nBins = floor(tSim/dt);
spikeMat = rand(nTrials, nBins) < fr* dt; % poisson process
tVec = 0:dt:tSim-dt;


end

