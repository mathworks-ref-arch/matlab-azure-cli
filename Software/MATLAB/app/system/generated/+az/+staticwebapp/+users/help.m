function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az staticwebapp users : Manage users of the static app.')
    fprintf('%s\n', '        Command group ''staticwebapp'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    invite : Create invitation link for specified user to the static app.')
    fprintf('%s\n', '    list   : Lists users and assigned roles, limited to users who accepted their invites.')
    fprintf('%s\n', '    update : Updates a user entry with the listed roles. Either user details or user id is required.')
    fprintf('%s\n', 'For more specific examples, use: az find "az staticwebapp users"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
