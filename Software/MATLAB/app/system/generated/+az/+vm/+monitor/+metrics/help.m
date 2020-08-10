function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az vm monitor metrics : Manage metrics for a vm.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-definitions : List the metric definitions for a VM.')
    fprintf('%s\n', '    tail             : List the metric values for a VM.')
    fprintf('%s\n', 'For more specific examples, use: az find "az vm monitor metrics"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
