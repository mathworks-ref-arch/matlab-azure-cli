function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az keyvault storage sas-definition : Manage storage account SAS definitions.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create       : Creates or updates a new SAS definition for the specified storage account.')
    fprintf('%s\n', '    delete       : Deletes a SAS definition from a specified storage account.')
    fprintf('%s\n', '    list         : List storage SAS definitions for the given storage account.')
    fprintf('%s\n', '    list-deleted : Lists deleted SAS definitions for the specified vault and storage account.')
    fprintf('%s\n', '    recover      : Recovers the deleted SAS definition.')
    fprintf('%s\n', '    show         : Gets information about a SAS definition for the specified storage account.')
    fprintf('%s\n', '    show-deleted : Gets the specified deleted sas definition.')
    fprintf('%s\n', '    update       : Updates the specified attributes associated with the given SAS definition.')
    fprintf('%s\n', 'For more specific examples, use: az find "az keyvault storage sas-definition"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
