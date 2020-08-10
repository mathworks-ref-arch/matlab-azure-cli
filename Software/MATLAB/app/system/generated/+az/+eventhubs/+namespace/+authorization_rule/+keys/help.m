function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs namespace authorization-rule keys : Manage Azure EventHubs Authorizationrule')
    fprintf('%s\n', '    connection strings for Namespace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : Shows the connection strings for namespace.')
    fprintf('%s\n', '    renew : Regenerate the connection strings of Authorizationrule for the namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs namespace authorization-rule keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
