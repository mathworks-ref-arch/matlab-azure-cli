function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vmss extension image : Find the available VM extensions for a subscription and region.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list          : List the information on available extensions.')
    fprintf('%s\n', '    list-names    : Gets a list of virtual machine extension image types.')
    fprintf('%s\n', '    list-versions : Gets a list of virtual machine extension image versions.')
    fprintf('%s\n', '    show          : Gets a virtual machine extension image.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vmss extension image"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
