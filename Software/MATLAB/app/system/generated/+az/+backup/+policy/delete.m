classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az backup policy delete : Delete a backup policy which doesn't have any associated backup items.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup policy delete ';
        end
        function this = name(this, varargin)
            % Name of the backup policy. You can use the backup policy list command to get the name of a policy.
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
            fprintf('%s\n', '    az backup policy delete : Delete a backup policy which doesn''t have any associated backup items.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the backup policy. You can use the backup policy list command to')
            fprintf('%s\n', '                           get the name of a policy.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                           resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                           should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v      : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Before you can delete a Backup protection policy, the policy must not have any associated Backup')
            fprintf('%s\n', '    items. To associate another policy with a Backup item, use the backup item set-policy command.')
            fprintf('%s\n', '        az backup policy delete --name MyBackupPolicy --resource-group MyResourceGroup --vault-name')
            fprintf('%s\n', '        MyVault')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup policy delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
