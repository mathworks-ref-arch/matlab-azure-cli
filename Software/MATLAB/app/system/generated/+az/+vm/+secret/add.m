classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az vm secret add : Add a secret to a VM.
            this.BaseCmd = 'az vm secret add ';
        end
        function this = certificate(this, varargin)
            % Key vault certificate name or its full secret URL.
            this.Options = [this.Options, '--certificate', varargin{:}];
        end

        function this = keyvault(this, varargin)
            % Name or ID of the key vault.
            this.Options = [this.Options, '--keyvault', varargin{:}];
        end

        function this = certificate_store(this, varargin)
            % Windows certificate store names. Default: My.
            this.Options = [this.Options, '--certificate-store', varargin{:}];
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
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
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
            fprintf('%s\n', '    az vm secret add : Add a secret to a VM.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --certificate [Required] : Key vault certificate name or its full secret URL.')
            fprintf('%s\n', '    --keyvault    [Required] : Name or ID of the key vault.')
            fprintf('%s\n', '    --certificate-store      : Windows certificate store names. Default: My.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                : The name of the Virtual Machine. You can configure the default using')
            fprintf('%s\n', '                               `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a secret to a VM. (autogenerated)')
            fprintf('%s\n', '        az vm secret add --certificate {certificate} --keyvault {keyvault} --name MyVirtualMachine')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm secret add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
