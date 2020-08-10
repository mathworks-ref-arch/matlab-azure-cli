function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az ad app permission : Manage an application''s OAuth2 permissions.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add           : Add an API permission.')
    fprintf('%s\n', '    admin-consent : Grant Application & Delegated permissions through admin-consent.')
    fprintf('%s\n', '    delete        : Remove an API permission.')
    fprintf('%s\n', '    grant         : Grant the app an API Delegated permissions.')
    fprintf('%s\n', '    list          : List API permissions the application has requested.')
    fprintf('%s\n', '    list-grants   : List Oauth2 permission grants.')
    fprintf('%s\n', 'For more specific examples, use: az find "az ad app permission"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
