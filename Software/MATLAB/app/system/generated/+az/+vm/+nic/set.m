classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az vm nic set : Configure settings of a NIC attached to a VM.
            this.BaseCmd = 'az vm nic set ';
        end
        function this = nics(this, varargin)
            % Names or IDs of NICs.
            this.Options = [this.Options, '--nics', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vm_name(this, varargin)
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
            this.Options = [this.Options, '--vm-name', varargin{:}];
        end

        function this = primary_nic(this, varargin)
            % Name or ID of the primary NIC. If missing, the first NIC in the list will be the primary.
            this.Options = [this.Options, '--primary-nic', varargin{:}];
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
            fprintf('%s\n', '    az vm nic set : Configure settings of a NIC attached to a VM.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --nics              [Required] : Names or IDs of NICs.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vm-name           [Required] : The name of the Virtual Machine. You can configure the default')
            fprintf('%s\n', '                                     using `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --primary-nic                  : Name or ID of the primary NIC. If missing, the first NIC in the')
            fprintf('%s\n', '                                     list will be the primary.')
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
            fprintf('%s\n', '    Set a NIC on a VM to be the primary interface.')
            fprintf('%s\n', '        az vm nic set -g MyResourceGroup --vm-name MyVm --nic nic_name1 nic_name2 --primary-nic')
            fprintf('%s\n', '        nic_name2')
            fprintf('%s\n', '    Configure settings of a NIC attached to a VM. (autogenerated)')
            fprintf('%s\n', '        az vm nic set --nics nic_name1 nic_name2 --primary-nic nic_name2 --resource-group')
            fprintf('%s\n', '        MyResourceGroup --vm-name MyVm')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm nic set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
