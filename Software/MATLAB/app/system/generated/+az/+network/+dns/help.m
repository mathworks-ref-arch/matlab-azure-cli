function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az network dns : Manage DNS domains in Azure.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    record-set      : Manage DNS records and record sets.')
    fprintf('%s\n', '    zone            : Manage DNS zones.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    list-references : Returns the DNS records specified by the referencing targetResourceIds.')
    fprintf('%s\n', 'For more specific examples, use: az find "az network dns"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
