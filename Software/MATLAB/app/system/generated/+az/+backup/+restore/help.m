function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az backup restore : Restore backed up items from recovery points in a Recovery Services vault.')
    fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    files                  : Gives access to all files of a recovery point.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    restore-azurefiles     : Restore backed up Azure files within a file-share to the same file-')
    fprintf('%s\n', '                             share or another file-share in registered storage accounts.')
    fprintf('%s\n', '    restore-azurefileshare : Restore backed up Azure file shares to the same file-share or another')
    fprintf('%s\n', '                             file-share in registered storage accounts.')
    fprintf('%s\n', '    restore-azurewl        : Restore backed up Azure Workloads in a Recovery services vault to')
    fprintf('%s\n', '                             another registered container or to the same container.')
    fprintf('%s\n', '    restore-disks          : Restore disks of the backed VM from the specified recovery point.')
    fprintf('%s\n', 'For more specific examples, use: az find "az backup restore"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
