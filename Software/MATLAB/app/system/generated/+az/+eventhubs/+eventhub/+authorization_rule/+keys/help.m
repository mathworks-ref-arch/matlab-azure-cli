function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs eventhub authorization-rule keys : Manage Azure Authorizationrule connection')
    fprintf('%s\n', '    strings for Eventhub.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list  : Shows the connection strings of Authorizationrule for the Eventhub.')
    fprintf('%s\n', '    renew : Regenerate the connection strings of Authorizationrule for the namespace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub authorization-rule keys"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
