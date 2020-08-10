function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az netappfiles volume export-policy : Manage Azure NetApp Files (ANF) Volume export policies.')
    fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
    fprintf('%s\n', '        release.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add a new rule to the export policy for a volume.')
    fprintf('%s\n', '    list   : List the export policy rules for a volume.')
    fprintf('%s\n', '    remove : Remove a rule from the export policy for a volume by rule index. The current rules can')
    fprintf('%s\n', '             be obtained by performing the subgroup list command.')
    fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles volume export-policy"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
