classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az role assignment create : Create a new role assignment for a user, group, or service
            % principal.
            this.BaseCmd = 'az role assignment create ';
        end
        function this = role(this, varargin)
            % Role name or id.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = assignee(this, varargin)
            % Represent a user, group, or service principal. supported format: object id, user sign-in name, or service principal name.
            this.Options = [this.Options, '--assignee', varargin{:}];
        end

        function this = assignee_object_id(this, varargin)
            % Use this parameter instead of '--assignee' to bypass graph permission issues. This parameter only works with object ids for users, groups, service principals, and managed identities. For managed identities use the principal id. For service principals, use the object id and not the app id.
            this.Options = [this.Options, '--assignee-object-id', varargin{:}];
        end

        function this = assignee_principal_type(this, varargin)
            % Use with --assignee-object-id to avoid errors caused by propagation latency in AAD Graph.  Allowed values: Application, DirectoryObjectOrGroup, DirectoryRoleTemplate, Everyone, ForeignGroup, Group, MSI, ServicePrincipal, Unknown, User.
            this.Options = [this.Options, '--assignee-principal-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Use it only if the role or assignment was added at the level of a resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope at which the role assignment or definition applies to, e.g., /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333, /subscriptions/0b1f6471-1bf0-4dda- aec3-111122223333/resourceGroups/myGroup, or /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/m yGroup/providers/Microsoft.Compute/virtualMachines/myVM.
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
            fprintf('%s\n', '    az role assignment create : Create a new role assignment for a user, group, or service')
            fprintf('%s\n', '    principal.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --role         [Required] : Role name or id.')
            fprintf('%s\n', '    --assignee                : Represent a user, group, or service principal. supported format:')
            fprintf('%s\n', '                                object id, user sign-in name, or service principal name.')
            fprintf('%s\n', '    --assignee-object-id      : Use this parameter instead of ''--assignee'' to bypass graph')
            fprintf('%s\n', '                                permission issues. This parameter only works with object ids for')
            fprintf('%s\n', '                                users, groups, service principals, and managed identities. For')
            fprintf('%s\n', '                                managed identities use the principal id. For service principals, use')
            fprintf('%s\n', '                                the object id and not the app id.')
            fprintf('%s\n', '    --assignee-principal-type : Use with --assignee-object-id to avoid errors caused by propagation')
            fprintf('%s\n', '                                latency in AAD Graph.  Allowed values: Application,')
            fprintf('%s\n', '                                DirectoryObjectOrGroup, DirectoryRoleTemplate, Everyone,')
            fprintf('%s\n', '                                ForeignGroup, Group, MSI, ServicePrincipal, Unknown, User.')
            fprintf('%s\n', '    --resource-group -g       : Use it only if the role or assignment was added at the level of a')
            fprintf('%s\n', '                                resource group.')
            fprintf('%s\n', '    --scope                   : Scope at which the role assignment or definition applies to, e.g.,')
            fprintf('%s\n', '                                /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333,')
            fprintf('%s\n', '                                /subscriptions/0b1f6471-1bf0-4dda-')
            fprintf('%s\n', '                                aec3-111122223333/resourceGroups/myGroup, or')
            fprintf('%s\n', '                                /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/m')
            fprintf('%s\n', '                                yGroup/providers/Microsoft.Compute/virtualMachines/myVM.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create role assignment for an assignee.')
            fprintf('%s\n', '        az role assignment create --assignee sp_name --role a_role')
            fprintf('%s\n', '    Create a new role assignment for a user, group, or service principal. (autogenerated)')
            fprintf('%s\n', '        az role assignment create --assignee 00000000-0000-0000-0000-000000000000 --role "Storage')
            fprintf('%s\n', '        Account Key Operator Service Role" --scope $id')
            fprintf('%s\n', 'For more specific examples, use: az find "az role assignment create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
