function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az policy : Manage resource policies.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    assignment     : Manage resource policy assignments.')
    fprintf('%s\n', '    definition     : Manage resource policy definitions.')
    fprintf('%s\n', '    event          : Manage policy events.')
    fprintf('%s\n', '    metadata       : Get policy metadata resources.')
    fprintf('%s\n', '    remediation    : Manage resource policy remediations.')
    fprintf('%s\n', '    set-definition : Manage resource policy set definitions.')
    fprintf('%s\n', '    state          : Manage policy compliance states.')
    fprintf('%s\n', 'For more specific examples, use: az find "az policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
