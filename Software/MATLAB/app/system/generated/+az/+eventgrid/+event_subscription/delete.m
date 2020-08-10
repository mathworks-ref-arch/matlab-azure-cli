classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az eventgrid event-subscription delete : Delete an event subscription.
            this.BaseCmd = 'az eventgrid event-subscription delete ';
        end
        function this = name(this, varargin)
            % Name of the event subscription.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = source_resource_id(this, varargin)
            % Fully qualified identifier of the Azure resource whose event subscription needs to be deleted. Usage:                      --source-resource-id Azure-Resource-ID For Azure subscription:     --source-resource-id /subscriptions/{SubID} For resource group:         --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1 For EventGrid topic:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/topics/t1 For storage account:        --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.Storage/storageaccounts/sa1 For EventGrid domain:       --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/domains/d1 For EventGrid domain topic: --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/p roviders/Microsoft.EventGrid/domains/d1/topics/t1.
            this.Options = [this.Options, '--source-resource-id', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid event-subscription delete : Delete an event subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the event subscription.')
            fprintf('%s\n', '    --source-resource-id : Fully qualified identifier of the Azure resource whose event subscription')
            fprintf('%s\n', '                           needs to be deleted.')
            fprintf('%s\n', '        Usage:                      --source-resource-id Azure-Resource-ID')
            fprintf('%s\n', '        For Azure subscription:     --source-resource-id /subscriptions/{SubID}')
            fprintf('%s\n', '        For resource group:         --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1')
            fprintf('%s\n', '        For EventGrid topic:        --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/topics/t1')
            fprintf('%s\n', '        For storage account:        --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.Storage/storageaccounts/sa1')
            fprintf('%s\n', '        For EventGrid domain:       --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/rg1/providers/Microsoft.EventGrid/domains/d1')
            fprintf('%s\n', '        For EventGrid domain topic: --source-resource-id /subscriptions/{SubID}/resourceGroups/rg1/p')
            fprintf('%s\n', '        roviders/Microsoft.EventGrid/domains/d1/topics/t1.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete an event subscription for an Event Grid topic.')
            fprintf('%s\n', '        az eventgrid event-subscription delete --name es1 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/topics/topic1')
            fprintf('%s\n', '    Delete an event subscription for an Event Grid domain topic.')
            fprintf('%s\n', '        az eventgrid event-subscription delete --name es1 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.Even')
            fprintf('%s\n', '        tGrid/domains/domain1/topics/topic1')
            fprintf('%s\n', '    Delete an event subscription for an Event Grid domain.')
            fprintf('%s\n', '        az eventgrid event-subscription delete --name es1 \')
            fprintf('%s\n', '            --source-resource-id')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{RG}/providers/Microsoft.EventGrid/domains/domain1')
            fprintf('%s\n', '    Delete an event subscription for an Azure subscription.')
            fprintf('%s\n', '        az eventgrid event-subscription delete --name es2 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}')
            fprintf('%s\n', '    Delete an event subscription for a resource group.')
            fprintf('%s\n', '        az eventgrid event-subscription delete --name es3 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}/resourceGroups/{RG}')
            fprintf('%s\n', '    Delete an event subscription for a storage account.')
            fprintf('%s\n', '        az eventgrid event-subscription delete --name es3 \')
            fprintf('%s\n', '            --source-resource-id /subscriptions/{SubID}/resourceGroups/{RG}/providers/microsoft.stor')
            fprintf('%s\n', '        age/storageaccounts/kalsegblob')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid event-subscription delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
