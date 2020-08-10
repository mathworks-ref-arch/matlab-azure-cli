function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs namespace authorization-rule : Manage Azure EventHubs Authorizationrule for')
    fprintf('%s\n', '    Namespace.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure EventHubs Authorizationrule connection strings for Namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates Authorizationrule for the given Namespace.')
    fprintf('%s\n', '    delete : Deletes the Authorizationrule of the namespace.')
    fprintf('%s\n', '    list   : Shows the list of Authorizationrule by Namespace.')
    fprintf('%s\n', '    show   : Shows the details of Authorizationrule.')
    fprintf('%s\n', '    update : Updates Authorizationrule for the given Namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
