function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az eventgrid : Manage Azure Event Grid topics, domains, domain topics, system topics partner')
    fprintf('%s\n', '    topics, event subscriptions, system topic event subscriptions and partner topic event')
    fprintf('%s\n', '    subscriptions.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    domain                 : Manage event domains.')
    fprintf('%s\n', '    event-subscription     : Manage event subscriptions.')
    fprintf('%s\n', '    extension-topic        : Manage Azure Event Grid extension topics.')
    fprintf('%s\n', '    partner                : Manage partner resources.')
    fprintf('%s\n', '    system-topic [Preview] : Manage system topics.')
    fprintf('%s\n', '    topic                  : Manage Azure Event Grid topics.')
    fprintf('%s\n', '    topic-type             : Get details for topic types.')
    fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
