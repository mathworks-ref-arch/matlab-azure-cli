classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az policy assignment create : Create a resource policy assignment.
            this.BaseCmd = 'az policy assignment create ';
        end
        function this = display_name(this, varargin)
            % Display name of the policy assignment.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = enforcement_mode(this, varargin)
            % Enforcement mode of the policy assignment, e.g. Default, DoNotEnforce. Please visit https://aka.ms/azure-policyAssignment- enforcement-mode for more information.  Allowed values: Default, DoNotEnforce.  Default: Default.
            this.Options = [this.Options, '--enforcement-mode', varargin{:}];
        end

        function this = location(this, varargin)
            % The location of the policy assignment. Only required when utilizing managed identity.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the new policy assignment.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = not_scopes(this, varargin)
            % Space-separated scopes where the policy assignment does not apply.
            this.Options = [this.Options, '--not-scopes', varargin{:}];
        end

        function this = params(this, varargin)
            % JSON formatted string or a path to a file or uri with parameter values of the policy rule.
            this.Options = [this.Options, '--params', varargin{:}];
        end

        function this = policy(this, varargin)
            % Name or id of the policy definition.
            this.Options = [this.Options, '--policy', varargin{:}];
        end

        function this = policy_set_definition(this, varargin)
            % Name or id of the policy set definition.
            this.Options = [this.Options, '--policy-set-definition', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group where the policy will be applied.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope to which this policy assignment applies.
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = sku(this, varargin)
            % Policy sku.  Allowed values: free, standard. Managed Identity Arguments
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Assigns a system assigned identity to the policy assignment.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = identity_scope(this, varargin)
            % Scope that the system assigned identity can access.
            this.Options = [this.Options, '--identity-scope', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id that will be assigned to the managed identity. Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az policy assignment create : Create a resource policy assignment.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --display-name             : Display name of the policy assignment.')
            fprintf('%s\n', '    --enforcement-mode -e      : Enforcement mode of the policy assignment, e.g. Default,')
            fprintf('%s\n', '                                 DoNotEnforce. Please visit https://aka.ms/azure-policyAssignment-')
            fprintf('%s\n', '                                 enforcement-mode for more information.  Allowed values: Default,')
            fprintf('%s\n', '                                 DoNotEnforce.  Default: Default.')
            fprintf('%s\n', '    --location -l              : The location of the policy assignment. Only required when utilizing')
            fprintf('%s\n', '                                 managed identity.')
            fprintf('%s\n', '    --name -n                  : Name of the new policy assignment.')
            fprintf('%s\n', '    --not-scopes               : Space-separated scopes where the policy assignment does not apply.')
            fprintf('%s\n', '    --params -p                : JSON formatted string or a path to a file or uri with parameter')
            fprintf('%s\n', '                                 values of the policy rule.')
            fprintf('%s\n', '    --policy                   : Name or id of the policy definition.')
            fprintf('%s\n', '    --policy-set-definition -d : Name or id of the policy set definition.')
            fprintf('%s\n', '    --resource-group -g        : The resource group where the policy will be applied.')
            fprintf('%s\n', '    --scope                    : Scope to which this policy assignment applies.')
            fprintf('%s\n', '    --sku -s                   : Policy sku.  Allowed values: free, standard.')
            fprintf('%s\n', 'Managed Identity Arguments')
            fprintf('%s\n', '    --assign-identity          : Assigns a system assigned identity to the policy assignment.')
            fprintf('%s\n', '    --identity-scope           : Scope that the system assigned identity can access.')
            fprintf('%s\n', '    --role                     : Role name or id that will be assigned to the managed identity.')
            fprintf('%s\n', '                                 Default: Contributor.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a resource policy assignment at scope')
            fprintf('%s\n', '        Valid scopes are management group, subscription, resource group, and resource, for example')
            fprintf('%s\n', '           management group:  /providers/Microsoft.Management/managementGroups/MyManagementGroup')
            fprintf('%s\n', '           subscription:      /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333')
            fprintf('%s\n', '           resource group:    /subscriptions/0b1f6471-1bf0-4dda-')
            fprintf('%s\n', '        aec3-111122223333/resourceGroups/myGroup')
            fprintf('%s\n', '           resource:          /subscriptions/0b1f6471-1bf0-4dda-')
            fprintf('%s\n', '        aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM')
            fprintf('%s\n', '             az policy assignment create --scope \')
            fprintf('%s\n', '                "/providers/Microsoft.Management/managementGroups/MyManagementGroup" \')
            fprintf('%s\n', '                    --policy {PolicyName} -p "{ \"allowedLocations\": \')
            fprintf('%s\n', '                        { \"value\": [ \"australiaeast\", \"eastus\", \"japaneast\" ] } }"')
            fprintf('%s\n', '    Create a resource policy assignment and provide rule parameter values.')
            fprintf('%s\n', '        az policy assignment create --policy {PolicyName} -p "{ \"allowedLocations\": \')
            fprintf('%s\n', '            { \"value\": [ \"australiaeast\", \"eastus\", \"japaneast\" ] } }"')
            fprintf('%s\n', '    Create a resource policy assignment with a system assigned identity.')
            fprintf('%s\n', '        az policy assignment create --name myPolicy --policy {PolicyName} --assign-identity')
            fprintf('%s\n', '    Create a resource policy assignment with a system assigned identity. The identity will have')
            fprintf('%s\n', '    ''Contributor'' role access to the subscription.')
            fprintf('%s\n', '        az policy assignment create --name myPolicy --policy {PolicyName} --assign-identity')
            fprintf('%s\n', '        --identity-scope /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx --role Contributor')
            fprintf('%s\n', '    Create a resource policy assignment with an enforcement mode. It indicates whether a policy')
            fprintf('%s\n', '    effect will be enforced or not during assignment creation and update. Please visit')
            fprintf('%s\n', '    https://aka.ms/azure-policyAssignment-enforcement-mode for more information.')
            fprintf('%s\n', '        az policy assignment create --name myPolicy --policy {PolicyName} --enforcement-mode')
            fprintf('%s\n', '        ''DoNotEnforce''')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy assignment create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
