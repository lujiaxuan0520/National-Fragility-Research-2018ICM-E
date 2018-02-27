function [fitresult, gof] = createFit(b, a)
%CREATEFIT(B,A)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : b
%      Y Output: a
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 11-Feb-2018 13:46:18 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( b, a );

% Set up fittype and options.
ft = fittype( 'fourier2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0 0 0 0 0 0.0826734908839419];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
%legend( h, 'a vs. b', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel('Year');
ylabel('Fragile State Index')
grid on


