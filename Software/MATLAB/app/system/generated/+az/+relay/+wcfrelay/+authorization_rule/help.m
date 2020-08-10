function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az relay wcfrelay authorization-rule : Manage Azure Relay Service WCF Relay Authorization Rule.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    keys   : Manage Azure Authorization Rule keys for Relay Service WCF Relay.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create Authorization Rule for the given Relay Service WCF Relay.')
    fprintf('%s\n', '    delete : Delete the Authorization Rule of Relay Service WCF Relay.')
    fprintf('%s\n', '    list   : List of Authorization Rule by Relay Service WCF Relay.')
    fprintf('%s\n', '    show   : Show properties of Authorization Rule for the given Relay Service WCF Relay.')
    fprintf('%s\n', '    update : Update Authorization Rule for the given Relay Service WCF Relay.')
    fprintf('%s\n', 'For more specific examples, use: az find "az relay wcfrelay authorization-rule"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
