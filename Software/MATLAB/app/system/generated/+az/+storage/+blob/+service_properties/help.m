function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage blob service-properties : Manage storage blob service properties.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    delete-policy : Manage storage blob delete-policy service properties.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    show          : Gets the properties of a storage account''s Blob service, including Azure Storage')
    fprintf('%s\n', '                    Analytics.')
    fprintf('%s\n', '    update        : Update storage blob service properties.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage blob service-properties"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
