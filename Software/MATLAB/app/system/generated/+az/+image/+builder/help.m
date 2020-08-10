function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az image builder : Manage and build image builder templates.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    customizer : Manage image builder template customizers.')
    fprintf('%s\n', '    output     : Manage image builder template output distributors.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    cancel     : Cancel the long running image build based on the image template.')
    fprintf('%s\n', '    create     : Create an image builder template.')
    fprintf('%s\n', '    delete     : Delete image builder template.')
    fprintf('%s\n', '    list       : List image builder templates.')
    fprintf('%s\n', '    run        : Build an image builder template.')
    fprintf('%s\n', '    show       : Show an image builder template.')
    fprintf('%s\n', '    show-runs  : Show an image builder template''s run outputs.')
    fprintf('%s\n', '    update     : Update an image builder template.')
    fprintf('%s\n', '    wait       : Place the CLI in a waiting state until a condition of the template is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az image builder"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
