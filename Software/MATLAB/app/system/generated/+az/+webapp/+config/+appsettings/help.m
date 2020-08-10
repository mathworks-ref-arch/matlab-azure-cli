function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp config appsettings : Configure web app settings. Updating or removing application')
    fprintf('%s\n', '    settings will cause an app recycle.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete web app settings.')
    fprintf('%s\n', '    list   : Get the details of a web app''s settings.')
    fprintf('%s\n', '    set    : Set a web app''s settings.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp config appsettings"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
