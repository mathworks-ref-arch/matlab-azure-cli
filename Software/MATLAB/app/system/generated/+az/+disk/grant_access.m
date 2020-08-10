classdef grant_access < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = grant_access()
            % az disk grant-access : Grant a resource access to a managed disk.
            this.BaseCmd = 'az disk grant-access ';
        end
        function this = duration_in_seconds(this, varargin)
            % Time duration in seconds until the SAS access expires.
            this.Options = [this.Options, '--duration-in-seconds', varargin{:}];
        end

        function this = access_level(this, varargin)
            % Access level.  Allowed values: Read, Write.  Default: Read.
            this.Options = [this.Options, '--access-level', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the managed disk.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az disk grant-access : Grant a resource access to a managed disk.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --duration-in-seconds [Required] : Time duration in seconds until the SAS access expires.')
            fprintf('%s\n', '    --access-level                   : Access level.  Allowed values: Read, Write.  Default: Read.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                            : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                       complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                       Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                       ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                        : The name of the managed disk.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Grant a resource read access to a managed disk. (autogenerated)')
            fprintf('%s\n', '        az disk grant-access --access-level Read --duration-in-seconds 3600 --name MyManagedDisk')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az disk grant-access"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class grant_access 
