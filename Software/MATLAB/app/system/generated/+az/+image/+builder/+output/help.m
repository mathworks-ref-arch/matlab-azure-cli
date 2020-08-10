function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az image builder output : Manage image builder template output distributors.')
    fprintf('%s\n', '        A customized image can be distributed as a managed image, a shared image in a shared image')
    fprintf('%s\n', '        gallery (SIG), or as a VHD blob.')
    fprintf('%s\n', 'Commands:')
    fprintf('%s\n', '    add    : Add an image builder output distributor to an image builder template.')
    fprintf('%s\n', '    clear  : Remove all image builder output distributors from an image builder template.')
    fprintf('%s\n', '    remove : Remove an image builder output distributor from an image builder template.')
    fprintf('%s\n', 'For more specific examples, use: az find "az image builder output"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
