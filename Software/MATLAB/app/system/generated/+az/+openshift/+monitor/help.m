function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az openshift monitor : Commands to manage Log Analytics monitoring. Requires "--workspace-id".')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable : Disable Log Analytics monitoring.')
    fprintf('%s\n', '    enable  : Enable Log Analytics monitoring. Requires "--workspace-id".')
    fprintf('%s\n', 'For more specific examples, use: az find "az openshift monitor"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
