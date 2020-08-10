classdef enable_for_vm < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = enable_for_vm()
            % az backup protection enable-for-vm : Start protecting a previously unprotected Azure VM as per
            % the specified policy to a Recovery services vault.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup protection enable-for-vm ';
        end
        function this = policy_name(this, varargin)
            % Name of the backup policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = vm(this, varargin)
            % Name or ID of the Virtual Machine to be protected.
            this.Options = [this.Options, '--vm', varargin{:}];
        end

        function this = disk_list_setting(this, varargin)
            % Option to decide whether to include or exclude the disk or reset any previous settings to default behavior.  Allowed values: exclude, include.
            this.Options = [this.Options, '--disk-list-setting', varargin{:}];
        end

        function this = diskslist(this, varargin)
            % List of disks to be excluded or included.
            this.Options = [this.Options, '--diskslist', varargin{:}];
        end

        function this = exclude_all_data_disks(this, varargin)
            % Option to specify to backup OS disk only.  Allowed values: false, true.
            this.Options = [this.Options, '--exclude-all-data-disks', varargin{:}];
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

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az backup protection enable-for-vm : Start protecting a previously unprotected Azure VM as per')
            fprintf('%s\n', '    the specified policy to a Recovery services vault.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --policy-name -p [Required] : Name of the backup policy.')
            fprintf('%s\n', '    --vm             [Required] : Name or ID of the Virtual Machine to be protected.')
            fprintf('%s\n', '    --disk-list-setting         : Option to decide whether to include or exclude the disk or reset')
            fprintf('%s\n', '                                  any previous settings to default behavior.  Allowed values:')
            fprintf('%s\n', '                                  exclude, include.')
            fprintf('%s\n', '    --diskslist                 : List of disks to be excluded or included.')
            fprintf('%s\n', '    --exclude-all-data-disks    : Option to specify to backup OS disk only.  Allowed values: false,')
            fprintf('%s\n', '                                  true.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --resource-group -g         : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                  `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v             : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Start protecting a previously unprotected Azure VM as per the specified policy to a Recovery')
            fprintf('%s\n', '    services vault. (autogenerated)')
            fprintf('%s\n', '        az backup protection enable-for-vm --policy-name MyPolicy --resource-group MyResourceGroup')
            fprintf('%s\n', '        --vault-name MyVault --vm myVM')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup protection enable-for-vm"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class enable_for_vm 
