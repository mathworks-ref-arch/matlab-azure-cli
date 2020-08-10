function val = verbose(setVal)
    % verbose Set/Get verbosity of Azure CLI commands
    %
    % To read the verbosity value
    % isVerbose = azure.verbose()
    %
    % To set verbosity value (to verbose)
    % azure.verbose(true);
    %
    % Default value is not verbose.
    
    % Copyright (c) 2020, The MathWorks, Inc.
    
    persistent VERBOSE
    if isempty(VERBOSE)
        VERBOSE = false;
    end
    
    if nargin > 0
        validateattributes(setVal, {'numeric', 'logical'}, {'size',[1, 1]});

        VERBOSE = logical(setVal);
        if nargout > 0
            val = VERBOSE;
        end
    else
        val = VERBOSE;
    end
    
end