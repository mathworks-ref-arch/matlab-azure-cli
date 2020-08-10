function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az search admin-key : Manage Azure Search admin keys.')
    fprintf('%s\n', '        Command group ''search'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    renew : Regenerates either the primary or secondary admin API key.')
    fprintf('%s\n', '    show  : Gets the primary and secondary admin API keys for the specified Azure Search service.')
    fprintf('%s\n', 'For more specific examples, use: az find "az search admin-key"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
