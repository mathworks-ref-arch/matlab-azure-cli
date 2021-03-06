function [HeaderNames, HeadersMATLAB] = getHeaderNames()
    % getHeaderNames Returns typical header names from Azure CLI help
    %
    % This function returns a list of header names, to help with parsing in
    % parseHelpContents.

    % Copyright 2019, The MathWorks Inc.
    HeaderNames = {...
        'Group', ...
        'Subgroups:', ...
        'Commands:', ...
        'Command', ...
        'Arguments', ...
        'Global Arguments', ...
        'Resource Id Arguments', ...
        'Resource ID Arguments', ...
        'Id Arguments', ...
        'Examples', ...
        'Positional', ...
        'SQL Filter Arguments', ...
        'Batch Account Arguments', ...
        'Cosmos DB Account Arguments', ...
        'Query Arguments', ...
        'Query Option Arguments', ...
        'Action Arguments', ...
        'Scope Arguments', ...
        'Correlation Filter Arguments', ...
        'Target Arguments', ...
        'Generic Update Arguments'};

    if nargout > 1
        HeadersMATLAB = cellfun(@azure.makeMatlabName, HeaderNames, ...
            'UniformOutput', false);
    end

end
