function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault certificate pending : Manage pending certificate creation operations.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Deletes the creation operation for a specific certificate.')
    fprintf('%s\n', '    merge  : Merges a certificate or a certificate chain with a key pair existing on the server.')
    fprintf('%s\n', '    show   : Gets the creation operation of a certificate.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate pending"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
