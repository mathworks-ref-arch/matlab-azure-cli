function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad user : Manage Azure Active Directory users and user authentication.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create an Azure Active Directory user.')
    fprintf('%s\n', '    delete            : Delete a user.')
    fprintf('%s\n', '    get-member-groups : Get groups of which the user is a member.')
    fprintf('%s\n', '    list              : List Azure Active Directory users.')
    fprintf('%s\n', '    show              : Gets user information from the directory.')
    fprintf('%s\n', '    update            : Update Azure Active Directory users.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad user"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
