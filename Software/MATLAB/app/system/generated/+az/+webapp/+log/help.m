function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp log : Manage web app logs.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    deployment [Preview] : Manage web app deployment logs.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    config               : Configure logging for a web app.')
    fprintf('%s\n', '    download             : Download a web app''s log history as a zip file.')
    fprintf('%s\n', '    show                 : Get the details of a web app''s logging configuration.')
    fprintf('%s\n', '    tail                 : Start live log tracing for a web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp log"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
