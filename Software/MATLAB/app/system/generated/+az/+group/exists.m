classdef exists < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = exists()
            % az group exists : Check if a resource group exists.
            this.BaseCmd = 'az group exists ';
        end
        function this = name(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = debug(this, varargin)
            % Increase logging verbosity to show all debug logs.
            this.Options = [this.Options, '--debug', varargin{:}];
        end

        function this = only_show_errors(this, varargin)
            % Only show errors, suppressing warnings.
            this.Options = [this.Options, '--only-show-errors', varargin{:}];
        end

        function this = output(this, varargin)
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az group exists : Check if a resource group exists.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name --resource-group -g -n [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                               group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                              : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                               table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                  : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                               more information and examples.')
            fprintf('%s\n', '    --subscription                           : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                               default subscription using `az account set -s')
            fprintf('%s\n', '                                               NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                               debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Check if ''MyResourceGroup'' exists.')
            fprintf('%s\n', '        az group exists -n MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az group exists"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class exists 
