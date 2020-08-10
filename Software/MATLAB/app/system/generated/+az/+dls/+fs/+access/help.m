function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az dls fs access : Manage Data Lake Store filesystem access and permissions.')
    fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    remove-all     : Remove the access control list for a file or folder.')
    fprintf('%s\n', '    remove-entry   : Remove entries for the access control list of a file or folder.')
    fprintf('%s\n', '    set            : Replace the existing access control list for a file or folder.')
    fprintf('%s\n', '    set-entry      : Update the access control list for a file or folder.')
    fprintf('%s\n', '    set-owner      : Set the owner information for a file or folder in a Data Lake Store account.')
    fprintf('%s\n', '    set-permission : Set the permissions for a file or folder in a Data Lake Store account.')
    fprintf('%s\n', '    show           : Display the access control list (ACL).')
    fprintf('%s\n', 'For more specific examples, use: az find "az dls fs access"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
