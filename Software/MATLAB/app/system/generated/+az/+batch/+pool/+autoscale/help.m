function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az batch pool autoscale : Manage automatic scaling of Batch pools.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable  : Disables automatic scaling for a Pool.')
    fprintf('%s\n', '    enable   : Enables automatic scaling for a Pool.')
    fprintf('%s\n', '    evaluate : Gets the result of evaluating an automatic scaling formula on the Pool.')
    fprintf('%s\n', 'For more specific examples, use: az find "az batch pool autoscale"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
