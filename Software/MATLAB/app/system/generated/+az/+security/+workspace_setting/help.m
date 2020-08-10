function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az security workspace-setting : Shows the workspace settings in your subscription - these')
    fprintf('%s\n', '    settings let you control which workspace will hold your security data.')
    fprintf('%s\n', '        Command group ''security'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Creates a workspace settings in your subscription - these settings let you control')
    fprintf('%s\n', '             which workspace will hold your security data.')
    fprintf('%s\n', '    delete : Deletes the workspace settings in your subscription - this will make the security')
    fprintf('%s\n', '             events on the subscription be reported to the default workspace.')
    fprintf('%s\n', '    list   : Shows the workspace settings in your subscription - these settings let you control')
    fprintf('%s\n', '             which workspace will hold your security data.')
    fprintf('%s\n', '    show   : Shows the workspace settings in your subscription - these settings let you control')
    fprintf('%s\n', '             which workspace will hold your security data.')
    fprintf('%s\n', 'For more specific examples, use: az find "az security workspace-setting"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
