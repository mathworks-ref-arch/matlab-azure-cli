function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad sp credential : Manage a service principal''s credentials.')
    fprintf('%s\n', '        The credential update will be applied on the Application object the service principal is')
    fprintf('%s\n', '        associated with. In other words, you can accomplish the same thing using "az ad app')
    fprintf('%s\n', '        credential".')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete a service principal''s credential.')
    fprintf('%s\n', '    list   : List a service principal''s credentials.')
    fprintf('%s\n', '    reset  : Reset a service principal credential.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad sp credential"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
