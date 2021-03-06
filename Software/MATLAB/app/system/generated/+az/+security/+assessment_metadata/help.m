function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az security assessment-metadata : View your security assessment metadata.')
    fprintf('%s\n', '        Command group ''security'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a customer managed security assessment type.')
    fprintf('%s\n', '    delete : Deletes a security assessment type and all it''s assessment results.')
    fprintf('%s\n', '    list   : List all security assessment results.')
    fprintf('%s\n', '    show   : Shows a security assessment.')
    fprintf('%s\n', 'For more specific examples, use: az find "az security assessment-metadata"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
