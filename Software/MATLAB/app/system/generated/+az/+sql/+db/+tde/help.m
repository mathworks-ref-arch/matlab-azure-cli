function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az sql db tde : Manage a database''s transparent data encryption.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-activity : Returns a database''s transparent data encryption operation result.')
    fprintf('%s\n', '    set           : Sets a database''s transparent data encryption configuration.')
    fprintf('%s\n', '    show          : Gets a database''s transparent data encryption configuration.')
    fprintf('%s\n', 'For more specific examples, use: az find "az sql db tde"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
