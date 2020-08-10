classdef failover < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = failover()
            % az storage account failover : Failover request can be triggered for a storage account in case of
            % availability issues.
            % The failover occurs from the storage account's primary cluster to secondary cluster for
            % (RA-)GRS/GZRS accounts. The secondary
            % cluster will become primary after failover. For more information, please refer to
            % https://docs.microsoft.com/en-us/azure/storage/common/storage-disaster-recovery-guidance.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az storage account failover ';
        end
        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            % The storage account name.
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
            fprintf('%s\n', '    az storage account failover : Failover request can be triggered for a storage account in case of')
            fprintf('%s\n', '    availability issues.')
            fprintf('%s\n', '        The failover occurs from the storage account''s primary cluster to secondary cluster for')
            fprintf('%s\n', '        (RA-)GRS/GZRS accounts. The secondary')
            fprintf('%s\n', '        cluster will become primary after failover. For more information, please refer to')
            fprintf('%s\n', '        https://docs.microsoft.com/en-us/azure/storage/common/storage-disaster-recovery-guidance.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --no-wait           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --yes -y            : Do not prompt for confirmation.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The storage account name.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Failover a storage account.')
            fprintf('%s\n', '        az storage account failover -n mystorageaccount -g MyResourceGroup')
            fprintf('%s\n', '    Failover a storage account without waiting for complete.')
            fprintf('%s\n', '        az storage account failover -n mystorageaccount -g MyResourceGroup --no-wait')
            fprintf('%s\n', '        az storage account show -n mystorageaccount --expand geoReplicationStats')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account failover"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class failover 
