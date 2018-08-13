function g = gabor2d( lambda, theta, phi, sigma, N )% GABOR2D  Make a 2D Gabor patch%% g = gabor2d( lambda, theta, phi, sigma, N )% 02-Jul-1998 -- created (RFM)% make coordinate matricesmidn=floor(N/2)+1;x=(1:N)-midn;y=(N:-1:1)-midn;[x,y]=meshgrid(x,y);% make grating matrixgrating=sin(2*pi*((x*cos(theta)+y*(sin(theta)))/lambda)-phi);% make unit-amplitude Gaussian window matrixwindow=exp(-(x.^2+y.^2)/(2*sigma^2));window=window/max(window(:));% make gaborg=grating.*window;return