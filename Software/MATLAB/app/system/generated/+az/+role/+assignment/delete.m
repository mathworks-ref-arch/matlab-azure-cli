classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az role assignment delete : Delete role assignments.
            this.BaseCmd = 'az role assignment delete ';
        end
        function this = assignee(this, varargin)
            % Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name.
            this.Options = [this.Options, '--assignee', varargin{:}];
        end

        function this = ids(this, varargin)
            % Space-separated role assignment ids.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = include_inherited(this, varargin)
            % Include assignments applied on parent scopes.
            this.Options = [this.Options, '--include-inherited', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Use it only if the role or assignment was added at the level of a resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda- aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup /providers/Microsoft.Compute/virtualMachines/myVM.
            this.Options = [this.Options, '--scope', varargin{:}];
        end

        function this = yes(this, varargin)
            % Continue to delete all assignments under the subscription.
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
            fprintf('%s\n', '    az role assignment delete : Delete role assignments.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --assignee          : Represent a user, group, or service principal. supported format: object')
            fprintf('%s\n', '                          id, user sign-in name, or service principal name.')
            fprintf('%s\n', '    --ids               : Space-separated role assignment ids.')
            fprintf('%s\n', '    --include-inherited : Include assignments applied on parent scopes.')
            fprintf('%s\n', '    --resource-group -g : Use it only if the role or assignment was added at the level of a resource')
            fprintf('%s\n', '                          group.')
            fprintf('%s\n', '    --role              : Role name or id.')
            fprintf('%s\n', '    --scope             : Scope at which the role assignment or definition applies to, e.g.,')
            fprintf('%s\n', '                          /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333,')
            fprintf('%s\n', '                          /subscriptions/0b1f6471-1bf0-4dda-')
            fprintf('%s\n', '                          aec3-111122223333/resourceGroups/myGroup, or')
            fprintf('%s\n', '                          /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup')
            fprintf('%s\n', '                          /providers/Microsoft.Compute/virtualMachines/myVM.')
            fprintf('%s\n', '    --yes -y            : Continue to delete all assignments under the subscription.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete role assignments. (autogenerated)')
            fprintf('%s\n', '        az role assignment delete --assignee 00000000-0000-0000-0000-000000000000 --role "Storage')
            fprintf('%s\n', '        Account Key Operator Service Role"')
            fprintf('%s\n', 'For more specific examples, use: az find "az role assignment delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
