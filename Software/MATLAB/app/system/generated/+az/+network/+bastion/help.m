function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network bastion : Manage Azure bastion host.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create a Azure bastion host machine.')
    fprintf('%s\n', '    delete : Delete a Azure bastion host machine.')
    fprintf('%s\n', '    list   : List all Azure bastion host machines.')
    fprintf('%s\n', '    show   : Show a Azure bastion host machine.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network bastion"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
