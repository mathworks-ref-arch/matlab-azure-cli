function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault certificate issuer : Manage certificate issuer information.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    admin  : Manage admin information for certificate issuers.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a certificate issuer record.')
    fprintf('%s\n', '    delete : Deletes the specified certificate issuer.')
    fprintf('%s\n', '    list   : List certificate issuers for a specified key vault.')
    fprintf('%s\n', '    show   : Lists the specified certificate issuer.')
    fprintf('%s\n', '    update : Update a certificate issuer record.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate issuer"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
