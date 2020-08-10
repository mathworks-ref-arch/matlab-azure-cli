function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az functionapp identity : Manage web app''s managed service identity.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    assign : Assign managed service identity to the web app.')
    fprintf('%s\n', '    remove : Disable web app''s managed service identity.')
    fprintf('%s\n', '    show   : Display web app''s managed service identity.')
    fprintf('%s\n', 'For more specific examples, use: az find "az functionapp identity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
