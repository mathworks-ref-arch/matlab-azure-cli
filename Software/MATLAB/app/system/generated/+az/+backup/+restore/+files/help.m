function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup restore files : Gives access to all files of a recovery point.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    mount-rp   : Download a script which mounts files of a recovery point.')
    fprintf('%s\n', '    unmount-rp : Close access to the recovery point.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup restore files"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
