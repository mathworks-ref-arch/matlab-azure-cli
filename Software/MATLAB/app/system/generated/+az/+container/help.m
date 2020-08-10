function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az container : Manage Azure Container Instances.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    attach  : Attach local standard output and error streams to a container in a container group.')
    fprintf('%s\n', '    create  : Create a container group.')
    fprintf('%s\n', '    delete  : Delete a container group.')
    fprintf('%s\n', '    exec    : Execute a command from within a running container of a container group.')
    fprintf('%s\n', '    export  : Export a container group in yaml format.')
    fprintf('%s\n', '    list    : List container groups.')
    fprintf('%s\n', '    logs    : Examine the logs for a container in a container group.')
    fprintf('%s\n', '    restart : Restarts all containers in a container group.')
    fprintf('%s\n', '    show    : Get the details of a container group.')
    fprintf('%s\n', '    start   : Starts all containers in a container group.')
    fprintf('%s\n', '    stop    : Stops all containers in a container group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az container"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
