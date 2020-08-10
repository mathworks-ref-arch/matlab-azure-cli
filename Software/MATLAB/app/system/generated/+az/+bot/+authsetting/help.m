function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az bot authsetting : Manage OAuth connection settings on a bot.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create         : Create an OAuth connection setting on a bot.')
    fprintf('%s\n', '    delete         : Delete an OAuth connection setting on a bot.')
    fprintf('%s\n', '    list           : Show all OAuth connection settings on a bot.')
    fprintf('%s\n', '    list-providers : List details for all service providers available for creating OAuth connection')
    fprintf('%s\n', '                     settings.')
    fprintf('%s\n', '    show           : Show details of an OAuth connection setting on a bot.')
    fprintf('%s\n', 'For more specific examples, use: az find "az bot authsetting"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
