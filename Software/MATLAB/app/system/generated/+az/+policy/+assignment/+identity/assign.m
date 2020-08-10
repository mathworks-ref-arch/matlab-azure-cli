classdef assign < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = assign()
            % az policy assignment identity assign : Add a system assigned identity to a policy assignment.
            this.BaseCmd = 'az policy assignment identity assign ';
        end
        function this = name(this, varargin)
            % Name of the policy assignment.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = identity_scope(this, varargin)
            % Scope that the system assigned identity can access.
            this.Options = [this.Options, '--identity-scope', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group where the policy will be applied.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id that will be assigned to the managed identity.  Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope to which this policy assignment applies.
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
            fprintf('%s\n', '    az policy assignment identity assign : Add a system assigned identity to a policy assignment.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the policy assignment.')
            fprintf('%s\n', '    --identity-scope     : Scope that the system assigned identity can access.')
            fprintf('%s\n', '    --resource-group -g  : The resource group where the policy will be applied.')
            fprintf('%s\n', '    --role               : Role name or id that will be assigned to the managed identity.  Default:')
            fprintf('%s\n', '                           Contributor.')
            fprintf('%s\n', '    --scope              : Scope to which this policy assignment applies.')
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
            fprintf('%s\n', '    Add a system assigned managed identity to a policy assignment.')
            fprintf('%s\n', '        az policy assignment identity assign -g MyResourceGroup -n MyPolicyAssignment')
            fprintf('%s\n', '    Add a system assigned managed identity to a policy assignment and grant it the ''Contributor''')
            fprintf('%s\n', '    role for the current resource group.')
            fprintf('%s\n', '        az policy assignment identity assign -g MyResourceGroup -n MyPolicyAssignment --role')
            fprintf('%s\n', '        Contributor --identity-scope /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-')
            fprintf('%s\n', '        xxxxxxxxxxxx/resourceGroups/MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy assignment identity assign"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class assign 
