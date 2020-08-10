function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az tag : Tag Management on a resource.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add-value    : Create a tag value.')
    fprintf('%s\n', '    create       : Create tags on a specific resource.')
    fprintf('%s\n', '    delete       : Delete tags on a specific resource.')
    fprintf('%s\n', '    list         : List the entire set of tags on a specific resource.')
    fprintf('%s\n', '    remove-value : Deletes a predefined tag value for a predefined tag name.')
    fprintf('%s\n', '    update       : Selectively update the set of tags on a specific resource.')
    fprintf('%s\n', 'For more specific examples, use: az find "az tag"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
