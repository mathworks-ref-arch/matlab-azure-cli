function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventhubs eventhub authorization-rule : Manage Azure Service Bus Authorizationrule for')
    fprintf('%s\n', '    Eventhub.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Authorizationrule connection strings for Eventhub.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates Authorizationrule for the given Eventhub.')
    fprintf('%s\n', '    delete : Deletes the Authorizationrule of Eventhub.')
    fprintf('%s\n', '    list   : Shows the list of Authorization-rules by Eventhub.')
    fprintf('%s\n', '    show   : Shows the details of Authorizationrule.')
    fprintf('%s\n', '    update : Updates Authorizationrule for the given Eventhub.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
