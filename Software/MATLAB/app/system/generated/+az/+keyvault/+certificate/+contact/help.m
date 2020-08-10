function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault certificate contact : Manage contacts for certificate management.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a contact to the specified vault to receive notifications of certificate')
    fprintf('%s\n', '             operations.')
    fprintf('%s\n', '    delete : Remove a certificate contact from the specified vault.')
    fprintf('%s\n', '    list   : Lists the certificate contacts for a specified key vault.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate contact"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
