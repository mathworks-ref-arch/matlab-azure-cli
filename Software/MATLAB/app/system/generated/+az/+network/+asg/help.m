function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network asg : Manage application security groups (ASGs).')
    fprintf('%s\n', '        You can configure network security as a natural extension of an application''s structure, ASG')
    fprintf('%s\n', '        allows you to group virtual machines and define network security policies based on those')
    fprintf('%s\n', '        groups. You can specify an application security group as the source and destination in a NSG')
    fprintf('%s\n', '        security rule. For more information visit https://docs.microsoft.com/azure/virtual-')
    fprintf('%s\n', '        network/create-network-security-group-preview.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    create : Create an application security group.')
    fprintf('%s\n', '    delete : Delete an application security group.')
    fprintf('%s\n', '    list   : List all application security groups in a subscription.')
    fprintf('%s\n', '    show   : Get details of an application security group.')
    fprintf('%s\n', '    update : Update an application security group.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network asg"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
