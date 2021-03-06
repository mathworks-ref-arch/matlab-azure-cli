classdef get_default_config < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get_default_config()
            % az vm diagnostics get-default-config : Get the default configuration settings for a VM.
            this.BaseCmd = 'az vm diagnostics get-default-config ';
        end
        function this = is_windows_os(this, varargin)
            % For Windows VMs.
            this.Options = [this.Options, '--is-windows-os', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            fprintf('%s\n', '    az vm diagnostics get-default-config : Get the default configuration settings for a VM.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --is-windows-os    : For Windows VMs.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get the default diagnostics for a Linux VM and override the storage account name and the VM')
            fprintf('%s\n', '    resource ID.')
            fprintf('%s\n', '        az vm diagnostics get-default-config \')
            fprintf('%s\n', '            | sed "s#__DIAGNOSTIC_STORAGE_ACCOUNT__#MyStorageAccount#g" \')
            fprintf('%s\n', '            | sed "s#__VM_OR_VMSS_RESOURCE_ID__#MyVmResourceId#g"')
            fprintf('%s\n', '    Get the default diagnostics for a Windows VM.')
            fprintf('%s\n', '        az vm diagnostics get-default-config --is-windows-os')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm diagnostics get-default-config"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get_default_config 
