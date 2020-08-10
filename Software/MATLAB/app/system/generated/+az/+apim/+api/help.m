function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az apim api : Manage Azure API Management API''s.')
    fprintf('%s\n', '        Command group ''apim'' is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an API Management API.')
    fprintf('%s\n', '    delete : Delete an API Management API.')
    fprintf('%s\n', '    import : Import an API Management service instance.')
    fprintf('%s\n', '    list   : List API Management API''s.')
    fprintf('%s\n', '    show   : Show details of an API Management API.')
    fprintf('%s\n', '    update : Update an API Management API.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until a condition of an apim api is met.')
    fprintf('%s\n', 'For more specific examples, use: az find "az apim api"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
