function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az storage entity : Manage table storage entities.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete  : Deletes an existing entity in a table.')
    fprintf('%s\n', '    insert  : Insert an entity into a table.')
    fprintf('%s\n', '    merge   : Updates an existing entity by merging the entity''s properties.')
    fprintf('%s\n', '    query   : List entities which satisfy a query.')
    fprintf('%s\n', '    replace : Updates an existing entity in a table.')
    fprintf('%s\n', '    show    : Get an entity from the specified table.')
    fprintf('%s\n', 'For more specific examples, use: az find "az storage entity"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
