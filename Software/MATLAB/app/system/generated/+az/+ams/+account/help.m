function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ams account : Manage Azure Media Services accounts.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    mru        : Manage media reserved units for an Azure Media Services account.')
    fprintf('%s\n', '    sp         : Manage service principal and role based access for an Azure Media Services account.')
    fprintf('%s\n', '    storage    : Manage storage for an Azure Media Services account.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    check-name : Checks whether the Media Service resource name is available.')
    fprintf('%s\n', '    create     : Create an Azure Media Services account.')
    fprintf('%s\n', '    delete     : Delete an Azure Media Services account.')
    fprintf('%s\n', '    list       : List Azure Media Services accounts for the entire subscription.')
    fprintf('%s\n', '    show       : Show the details of an Azure Media Services account.')
    fprintf('%s\n', '    update     : Update the details of an Azure Media Services account.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ams account"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
