function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az hdinsight script-action : Manage HDInsight script actions.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    delete                 : Deletes a specified persisted script action of the cluster.')
    fprintf('%s\n', '    execute                : Execute script actions on the specified HDInsight cluster.')
    fprintf('%s\n', '    list                   : Lists all the persisted script actions for the specified cluster.')
    fprintf('%s\n', '    list-execution-history : Lists all scripts'' execution history for the specified cluster.')
    fprintf('%s\n', '    promote                : Promotes the specified ad-hoc script execution to a persisted script.')
    fprintf('%s\n', '    show-execution-details : Gets the script execution detail for the given script execution ID.')
    fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight script-action"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
