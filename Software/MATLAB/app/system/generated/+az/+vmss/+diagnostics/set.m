classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az vmss diagnostics set : Enable diagnostics on a VMSS.
            this.BaseCmd = 'az vmss diagnostics set ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = settings(this, varargin)
            % Json string or a file path, which defines data to be collected.
            this.Options = [this.Options, '--settings', varargin{:}];
        end

        function this = vmss_name(this, varargin)
            % Scale set name.
            this.Options = [this.Options, '--vmss-name', varargin{:}];
        end

        function this = no_auto_upgrade(this, varargin)
            % If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed.  Allowed values: false, true.
            this.Options = [this.Options, '--no-auto-upgrade', varargin{:}];
        end

        function this = protected_settings(this, varargin)
            % Json string or a file path containing private configurations such as storage account keys, etc.
            this.Options = [this.Options, '--protected-settings', varargin{:}];
        end

        function this = version(this, varargin)
            % Version of the diagnostics extension. Will use the latest if not specfied.
            this.Options = [this.Options, '--version', varargin{:}];
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
            fprintf('%s\n', '    az vmss diagnostics set : Enable diagnostics on a VMSS.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --settings          [Required] : Json string or a file path, which defines data to be collected.')
            fprintf('%s\n', '    --vmss-name         [Required] : Scale set name.')
            fprintf('%s\n', '    --no-auto-upgrade              : If set, the extension service will not automatically pick or')
            fprintf('%s\n', '                                     upgrade to the latest minor version, even if the extension is')
            fprintf('%s\n', '                                     redeployed.  Allowed values: false, true.')
            fprintf('%s\n', '    --protected-settings           : Json string or a file path containing private configurations')
            fprintf('%s\n', '                                     such as storage account keys, etc.')
            fprintf('%s\n', '    --version                      : Version of the diagnostics extension. Will use the latest if')
            fprintf('%s\n', '                                     not specfied.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable diagnostics on a VMSS. (autogenerated)')
            fprintf('%s\n', '        az vmss diagnostics set --protected-settings {protected-settings} --resource-group')
            fprintf('%s\n', '        MyResourceGroup --settings ''{"commandToExecute": "echo testing"}'' --vmss-name MyVmss')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss diagnostics set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
