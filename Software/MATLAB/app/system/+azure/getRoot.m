function R = getRoot(varargin)
    % getRoot returns the root of the Azure CLI package.
    
    % Copyright 2019, The MathWorks Inc.
    
    here = fileparts(mfilename('fullpath'));
    R = fileparts(fileparts(fileparts(fileparts(here))));
    if nargin ~= 0
        R = fullfile(R, varargin{:});
    end
end