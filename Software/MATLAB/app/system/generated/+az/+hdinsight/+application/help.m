function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az hdinsight application : Manage HDInsight applications.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an application for a HDInsight cluster.')
    fprintf('%s\n', '    delete : Deletes the specified application on the HDInsight cluster.')
    fprintf('%s\n', '    list   : Lists all of the applications for the HDInsight cluster.')
    fprintf('%s\n', '    show   : Gets properties of the specified application.')
    fprintf('%s\n', '    wait   : Place the CLI in a waiting state until an operation is complete.')
    fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight application"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
