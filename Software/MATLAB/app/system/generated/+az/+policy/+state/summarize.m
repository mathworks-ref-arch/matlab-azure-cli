classdef summarize < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = summarize()
            % az policy state summarize : Summarize policy compliance states.
            this.BaseCmd = 'az policy state summarize ';
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

        function this = namespace(this, varargin)
            % Provider namespace (Ex: Microsoft.Provider).
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = parent(this, varargin)
            % The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB).
            this.Options = [this.Options, '--parent', varargin{:}];
        end

        function this = resource(this, varargin)
            % Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Resource type (Ex: resourceTypeC).
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

        function this = filter(this, varargin)
            % Filter expression using OData notation.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = from(this, varargin)
            % ISO 8601 formatted timestamp specifying the start time of the interval to query.
            this.Options = [this.Options, '--from', varargin{:}];
        end

        function this = to(this, varargin)
            % ISO 8601 formatted timestamp specifying the end time of the interval to query.
            this.Options = [this.Options, '--to', varargin{:}];
        end

        function this = top(this, varargin)
            % Maximum number of records to return.
            this.Options = [this.Options, '--top', varargin{:}];
        end

        function this = management_group(this, varargin)
            % Name of management group.
            this.Options = [this.Options, '--management-group', varargin{:}];
        end

        function this = policy_assignment(this, varargin)
            % Name of policy assignment.
            this.Options = [this.Options, '--policy-assignment', varargin{:}];
        end

        function this = policy_definition(this, varargin)
            % Name of policy definition.
            this.Options = [this.Options, '--policy-definition', varargin{:}];
        end

        function this = policy_set_definition(this, varargin)
            % Name of policy set definition.
            this.Options = [this.Options, '--policy-set-definition', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az policy state summarize : Summarize policy compliance states.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Query Option Arguments')
            fprintf('%s\n', '    --filter                   : Filter expression using OData notation.')
            fprintf('%s\n', '    --from                     : ISO 8601 formatted timestamp specifying the start time of the')
            fprintf('%s\n', '                                 interval to query.')
            fprintf('%s\n', '    --to                       : ISO 8601 formatted timestamp specifying the end time of the')
            fprintf('%s\n', '                                 interval to query.')
            fprintf('%s\n', '    --top                      : Maximum number of records to return.')
            fprintf('%s\n', 'Resource ID Arguments')
            fprintf('%s\n', '    --namespace                : Provider namespace (Ex: Microsoft.Provider).')
            fprintf('%s\n', '    --parent                   : The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB).')
            fprintf('%s\n', '    --resource                 : Resource ID or resource name. If a name is given, please provide')
            fprintf('%s\n', '                                 the resource group and other relevant resource id arguments.')
            fprintf('%s\n', '    --resource-type            : Resource type (Ex: resourceTypeC).')
            fprintf('%s\n', 'Scope Arguments')
            fprintf('%s\n', '    --management-group -m      : Name of management group.')
            fprintf('%s\n', '    --policy-assignment -a     : Name of policy assignment.')
            fprintf('%s\n', '    --policy-definition -d     : Name of policy definition.')
            fprintf('%s\n', '    --policy-set-definition -s : Name of policy set definition.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get latest non-compliant policy states summary at current subscription scope.')
            fprintf('%s\n', '        az policy state summarize')
            fprintf('%s\n', '    Get latest non-compliant policy states summary at management group scope.')
            fprintf('%s\n', '        az policy state summarize -m "myMg"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary at resource group scope in current subscription.')
            fprintf('%s\n', '        az policy state summarize -g "myRg"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a resource using resource ID.')
            fprintf('%s\n', '        az policy state summarize --resource')
            fprintf('%s\n', '        "/subscriptions/fff10b27-fff3-fff5-fff8-fffbe01e86a5/resourceGroups/myResourceGroup')
            fprintf('%s\n', '        /providers/Microsoft.EventHub/namespaces/myns1/eventhubs/eh1/consumergroups/cg1"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a resource using resource name.')
            fprintf('%s\n', '        az policy state summarize --resource "myKeyVault" --namespace "Microsoft.KeyVault"')
            fprintf('%s\n', '        --resource-type "vaults" -g "myresourcegroup"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a nested resource using resource name.')
            fprintf('%s\n', '        az policy state summarize --resource "myRule1" --namespace "Microsoft.Network" --resource-')
            fprintf('%s\n', '        type "securityRules" --parent "networkSecurityGroups/mysecuritygroup1" -g "myresourcegroup"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a policy set definition in current')
            fprintf('%s\n', '    subscription.')
            fprintf('%s\n', '        az policy state summarize -s "fff58873-fff8-fff5-fffc-fffbe7c9d697"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a policy definition in current subscription.')
            fprintf('%s\n', '        az policy state summarize -d "fff69973-fff8-fff5-fffc-fffbe7c9d698"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a policy assignment in current subscription.')
            fprintf('%s\n', '        az policy state summarize -a "ddd8ef92e3714a5ea3d208c1"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary for a policy assignment in the specified resource')
            fprintf('%s\n', '    group in current subscription.')
            fprintf('%s\n', '        az policy state summarize -g "myRg" -a "ddd8ef92e3714a5ea3d208c1"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary in current subscription, limiting the assignments')
            fprintf('%s\n', '    summary to top 5.')
            fprintf('%s\n', '        az policy state summarize --top 5')
            fprintf('%s\n', '    Get latest non-compliant policy states summary in current subscription for a custom time')
            fprintf('%s\n', '    interval.')
            fprintf('%s\n', '        az policy state summarize --from "2018-03-08T00:00:00Z" --to "2018-03-15T00:00:00Z"')
            fprintf('%s\n', '    Get latest non-compliant policy states summary in current subscription filtering results based')
            fprintf('%s\n', '    on some property values.')
            fprintf('%s\n', '        az policy state summarize --filter "(policyDefinitionAction eq ''deny'' or')
            fprintf('%s\n', '        policyDefinitionAction eq ''audit'') and resourceLocation ne ''eastus''"')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy state summarize"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class summarize 
