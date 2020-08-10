classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az eventgrid extension-topic show : Get the details of an extension topic.
            this.BaseCmd = 'az eventgrid extension-topic show ';
        end
        function this = scope(this, varargin)
            % The identifier of the resource to which extension topic is queried. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resour ceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resource Name}' for Azure resource.
            this.Options = [this.Options, '--scope', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid extension-topic show : Get the details of an extension topic.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --scope [Required] : The identifier of the resource to which extension topic is queried. The')
            fprintf('%s\n', '                         scope can be a subscription, or a resource group, or a top level resource')
            fprintf('%s\n', '                         belonging to a resource provider namespace. For example, use')
            fprintf('%s\n', '                         ''/subscriptions/{subscriptionId}/'' for a subscription,')
            fprintf('%s\n', '                         ''/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}'' for a')
            fprintf('%s\n', '                         resource group, and ''/subscriptions/{subscriptionId}/resourceGroups/{resour')
            fprintf('%s\n', '                         ceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resource')
            fprintf('%s\n', '                         Name}'' for Azure resource.')
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
            fprintf('%s\n', '    Show the details of an extension topic.')
            fprintf('%s\n', '        az eventgrid extension-topic show --scope /subscriptions/{SubID}/resourceGroups/{RG}/provide')
            fprintf('%s\n', '        rs/Microsoft.Storage/storageAccounts/{StorageAccountName}')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid extension-topic show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
