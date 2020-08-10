function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network application-gateway ssl-policy : Manage the SSL policy of an application gateway.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    predefined   : Get information on predefined SSL policies.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-options : Lists available SSL options for configuring SSL policy.')
    fprintf('%s\n', '    set          : Update or clear SSL policy settings.')
    fprintf('%s\n', '    show         : Get the details of gateway''s SSL policy settings.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway ssl-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
