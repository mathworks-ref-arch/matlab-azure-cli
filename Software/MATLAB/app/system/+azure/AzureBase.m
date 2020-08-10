classdef AzureBase < handle
    % AzureBase The base class for Azure commands

    % Copyright 2020, The MathWorks Inc.

    properties (SetAccess=protected, Hidden=true)
        Options = {};
        BaseCmd = '';
    end
    properties(Dependent=true, SetAccess=protected)
        CMD
    end

    methods
        function this = AzureBase()
        end

        function S = run(this)
            if azure.verbose()
                fprintf('Executing: %s\n', this.CMD);
                [r,s] = system(this.CMD, '-echo');
            else
                [r,s] = system(this.CMD);
            end
            if r
                S = s;
                warning('Something bad happened\n\t%s\n%s\n', this.CMD, s);
            else
                S = azure.jsondecode(s);
            end
        end

        function sysCmd = get.CMD(this)
            opts = cellfun(@stringify, this.Options, 'UniformOutput', false);
            sysCmd = sprintf('%s%s', this.BaseCmd, ...
                sprintf('%s ', opts{:}));
        end
    end

end

function str = stringify(val)
    if isnumeric(val)
        str = num2str(val);
    elseif ischar(val)
        str = val;
    else
        error('Unsupported type of option: %s\n', class(val));
    end
end
