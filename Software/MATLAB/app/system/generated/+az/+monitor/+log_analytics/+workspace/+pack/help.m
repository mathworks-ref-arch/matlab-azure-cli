function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az monitor log-analytics workspace pack : Manage intelligent packs for log analytics workspace.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    disable : Disable an intelligence pack for a given workspace.')
    fprintf('%s\n', '    enable  : Enable an intelligence pack for a given workspace.')
    fprintf('%s\n', '    list    : List all the intelligence packs possible and whether they are enabled or disabled for')
    fprintf('%s\n', '              a given workspace.')
    fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace pack"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
