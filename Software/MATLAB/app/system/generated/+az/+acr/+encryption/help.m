function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az acr encryption : Manage container registry encryption.')
    fprintf('%s\n', '        For more information, see http://aka.ms/acr/cmk.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    rotate-key : Rotate (update) the container registry''s encryption key.')
    fprintf('%s\n', '    show       : Show the container registry''s encryption details.')
    fprintf('%s\n', 'For more specific examples, use: az find "az acr encryption"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
