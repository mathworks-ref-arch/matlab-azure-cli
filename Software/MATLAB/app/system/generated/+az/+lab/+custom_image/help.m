function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az lab custom-image : Manage custom images of a DevTest Lab.')
    fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a custom image in a DevTest Lab.')
    fprintf('%s\n', '    delete : Delete custom image.')
    fprintf('%s\n', '    list   : List custom images in a given lab.')
    fprintf('%s\n', '    show   : Get custom image.')
    fprintf('%s\n', 'For more specific examples, use: az find "az lab custom-image"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
