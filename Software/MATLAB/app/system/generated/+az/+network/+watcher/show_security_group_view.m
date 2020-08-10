classdef show_security_group_view < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_security_group_view()
            % az network watcher show-security-group-view : Get detailed security information on a VM for the
            % currently configured network security group.
            % For more information on using security group view visit
            % https://docs.microsoft.com/azure/network-watcher/network-watcher-security-group-view-cli.
            this.BaseCmd = 'az network watcher show-security-group-view ';
        end
        function this = resource_group(this, varargin)
            % Name of the resource group the target VM is in.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vm(this, varargin)
            % Name or ID of the VM to target. If the name of the VM is provided, the --resource-group is required.
            this.Options = [this.Options, '--vm', varargin{:}];
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
            fprintf('%s\n', '    az network watcher show-security-group-view : Get detailed security information on a VM for the')
            fprintf('%s\n', '    currently configured network security group.')
            fprintf('%s\n', '        For more information on using security group view visit')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/network-watcher/network-watcher-security-group-view-cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the resource group the target VM is in.')
            fprintf('%s\n', '    --vm                [Required] : Name or ID of the VM to target. If the name of the VM is')
            fprintf('%s\n', '                                     provided, the --resource-group is required.')
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
            fprintf('%s\n', '    Get the network security group information for the specified VM.')
            fprintf('%s\n', '        az network watcher show-security-group-view -g MyResourceGroup --vm MyVm')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher show-security-group-view"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_security_group_view 
