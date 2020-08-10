function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az cache : Commands to manage CLI objects cached using the `--defer` argument.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete : Delete an object from the cache.')
    fprintf('%s\n', '    list   : List the contents of the object cache.')
    fprintf('%s\n', '    purge  : Clear the entire CLI object cache.')
    fprintf('%s\n', '    show   : Show the contents of a specific object in the cache.')
    fprintf('%s\n', 'For more specific examples, use: az find "az cache"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
