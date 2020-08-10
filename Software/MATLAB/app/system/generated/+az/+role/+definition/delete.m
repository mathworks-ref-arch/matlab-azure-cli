classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az role definition delete : Delete a role definition.
            this.BaseCmd = 'az role definition delete ';
        end
        function this = name(this, varargin)
            % The role's name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = custom_role_only(this, varargin)
            % Custom roles only(vs. build-in ones).  Allowed values: false, true.
            this.Options = [this.Options, '--custom-role-only', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Use it only if the role or assignment was added at the level of a resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda- aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGrou p/providers/Microsoft.Compute/virtualMachines/myVM.
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
            fprintf('%s\n', '    az role definition delete : Delete a role definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The role''s name.')
            fprintf('%s\n', '    --custom-role-only   : Custom roles only(vs. build-in ones).  Allowed values: false, true.')
            fprintf('%s\n', '    --resource-group -g  : Use it only if the role or assignment was added at the level of a')
            fprintf('%s\n', '                           resource group.')
            fprintf('%s\n', '    --scope              : Scope at which the role assignment or definition applies to, e.g.,')
            fprintf('%s\n', '                           /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333,')
            fprintf('%s\n', '                           /subscriptions/0b1f6471-1bf0-4dda-')
            fprintf('%s\n', '                           aec3-111122223333/resourceGroups/myGroup, or')
            fprintf('%s\n', '                           /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGrou')
            fprintf('%s\n', '                           p/providers/Microsoft.Compute/virtualMachines/myVM.')
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
            fprintf('%s\n', '    Delete a role definition. (autogenerated)')
            fprintf('%s\n', '        az role definition delete --name MyRole')
            fprintf('%s\n', 'For more specific examples, use: az find "az role definition delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
