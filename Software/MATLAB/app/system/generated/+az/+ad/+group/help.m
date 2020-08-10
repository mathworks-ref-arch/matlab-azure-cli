function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad group : Manage Azure Active Directory groups.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    member            : Manage Azure Active Directory group members.')
    fprintf('%s\n', '    owner             : Manage Azure Active Directory group owners.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create            : Create a group in the directory.')
    fprintf('%s\n', '    delete            : Delete a group from the directory.')
    fprintf('%s\n', '    get-member-groups : Gets a collection of object IDs of groups of which the specified group is a')
    fprintf('%s\n', '                        member.')
    fprintf('%s\n', '    list              : List groups in the directory.')
    fprintf('%s\n', '    show              : Gets group information from the directory.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad group"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
