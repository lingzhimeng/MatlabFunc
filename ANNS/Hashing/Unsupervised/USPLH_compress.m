function [B, elapse] = USPLH_compress(A, model)
%   This is a wrapper function of USPLH testing.
%
%	Usage:
%	[B,elapse] = USPLH_compress(A, model)
%
%	      A: Rows of vectors of data points. Each row is sample point
%     model: The model generated by USPLH_learn.
%
%	      B: The binary code of the input data A. Each row is sample point
%    elapse: The coding time (testing time).
%
%
%
%   version 2.0 --Nov/2016 
%   version 1.0 --Jan/2013 
%
%   Written by  Yue Lin (linyue29@gmail.com)
%               Deng Cai (dengcai AT gmail DOT com) 
%                                             

tmpT = tic;


A = A * model.w;
U = A - repmat(model.b, [size(A,1) 1]);
B = (U > 0);

elapse = toc(tmpT);
end