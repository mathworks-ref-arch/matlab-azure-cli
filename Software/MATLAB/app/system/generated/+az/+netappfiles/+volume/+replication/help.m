function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles volume replication : Manage Azure NetApp Files (ANF) Volume replication')
    fprintf('%s\n', '    operations.')
    fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    approve : Authorize a volume as a replication destination for a specified source.')
    fprintf('%s\n', '    remove  : Delete a volume replication for the specified destination volume. The data replication')
    fprintf('%s\n', '              objects of source and destination volumes will be removed.')
    fprintf('%s\n', '    resume  : Resync a volume replication for the specified destination volume. The replication')
    fprintf('%s\n', '              process is resumed from source to destination.')
    fprintf('%s\n', '    status  : Get the replication status for the specified replication volume.')
    fprintf('%s\n', '    suspend : Suspend/break a volume replication for the specified destination volume. The')
    fprintf('%s\n', '              replication process is suspended until resumed or deleted.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles volume replication"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
