function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az hdinsight : Manage HDInsight resources.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    application                : Manage HDInsight applications.')
    fprintf('%s\n', '    host                       : Manage HDInsight cluster''s virtual hosts.')
    fprintf('%s\n', '    monitor                    : Manage Azure Monitor logs integration on an HDInsight cluster.')
    fprintf('%s\n', '    script-action              : Manage HDInsight script actions.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create                     : Create a new cluster.')
    fprintf('%s\n', '    delete                     : Deletes the specified HDInsight cluster.')
    fprintf('%s\n', '    list                       : List HDInsight clusters in a resource group or subscription.')
    fprintf('%s\n', '    list-usage                 : Lists the usages for the specified location.')
    fprintf('%s\n', '    resize                     : Resizes the specified HDInsight cluster to the specified size.')
    fprintf('%s\n', '    rotate-disk-encryption-key : Rotate the disk encryption key of the specified HDInsight cluster.')
    fprintf('%s\n', '    show                       : Gets the specified cluster.')
    fprintf('%s\n', '    update                     : Patch HDInsight cluster with the specified parameters.')
    fprintf('%s\n', '    wait                       : Place the CLI in a waiting state until an operation is complete.')
    fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
