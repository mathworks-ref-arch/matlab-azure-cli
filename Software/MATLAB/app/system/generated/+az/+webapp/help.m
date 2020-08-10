function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az webapp : Manage web apps.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    auth                        : Manage webapp authentication and authorization.')
    fprintf('%s\n', '    config                      : Configure a web app.')
    fprintf('%s\n', '    cors                        : Manage Cross-Origin Resource Sharing (CORS).')
    fprintf('%s\n', '    deleted           [Preview] : Manage deleted web apps.')
    fprintf('%s\n', '    deployment                  : Manage web app deployments.')
    fprintf('%s\n', '    hybrid-connection [Preview] : Methods that list, add and remove hybrid-connections')
    fprintf('%s\n', '                                  from webapps.')
    fprintf('%s\n', '    identity                    : Manage web app''s managed service identity.')
    fprintf('%s\n', '    log                         : Manage web app logs.')
    fprintf('%s\n', '    traffic-routing             : Manage traffic routing for web apps.')
    fprintf('%s\n', '    vnet-integration  [Preview] : Methods that list, add, and remove virtual network')
    fprintf('%s\n', '                                  integrations from a webapp.')
    fprintf('%s\n', '    webjob                      : Allows management operations for webjobs on a web app.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    browse                      : Open a web app in a browser.')
    fprintf('%s\n', '    create                      : Create a web app.')
    fprintf('%s\n', '    create-remote-connection    : Creates a remote connection using a tcp tunnel to your web app.')
    fprintf('%s\n', '    delete                      : Delete a web app.')
    fprintf('%s\n', '    list                        : List web apps.')
    fprintf('%s\n', '    list-runtimes               : List available built-in stacks which can be used for web apps.')
    fprintf('%s\n', '    restart                     : Restart a web app.')
    fprintf('%s\n', '    show                        : Get the details of a web app.')
    fprintf('%s\n', '    ssh               [Preview] : SSH command establishes a ssh session to the web')
    fprintf('%s\n', '                                  container and developer would get a shell terminal remotely.')
    fprintf('%s\n', '    start                       : Start a web app.')
    fprintf('%s\n', '    stop                        : Stop a web app.')
    fprintf('%s\n', '    up                          : Create a webapp and deploy code from a local workspace to the app.')
    fprintf('%s\n', '                                  The command is required to run from the folder where the code is')
    fprintf('%s\n', '                                  present. Current support includes Node, Python, .NET Core and')
    fprintf('%s\n', '                                  ASP.NET. Node, Python apps are created as Linux apps. .Net Core,')
    fprintf('%s\n', '                                  ASP.NET, and static HTML apps are created as Windows apps. Append')
    fprintf('%s\n', '                                  the html flag to deploy as a static HTML app.')
    fprintf('%s\n', '    update                      : Update a web app.')
    fprintf('%s\n', 'For more specific examples, use: az find "az webapp"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end