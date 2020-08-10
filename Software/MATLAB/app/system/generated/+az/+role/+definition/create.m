classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az role definition create : Create a custom role definition.
            this.BaseCmd = 'az role definition create ';
        end
        function this = role_definition(this, varargin)
            % Description of a role as JSON, or a path to a file containing a JSON description.
            this.Options = [this.Options, '--role-definition', varargin{:}];
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
            fprintf('%s\n', '    az role definition create : Create a custom role definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --role-definition [Required] : Description of a role as JSON, or a path to a file containing a')
            fprintf('%s\n', '                                   JSON description.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a role with read-only access to storage and network resources, and the ability to start')
            fprintf('%s\n', '    or restart VMs.')
            fprintf('%s\n', '        az role definition create --role-definition ''{ \')
            fprintf('%s\n', '            "Name": "Contoso On-call", \')
            fprintf('%s\n', '            "Description": "Perform VM actions and read storage and network information.", \')
            fprintf('%s\n', '            "Actions": [ \')
            fprintf('%s\n', '                "Microsoft.Compute/*/read", \')
            fprintf('%s\n', '                "Microsoft.Compute/virtualMachines/start/action", \')
            fprintf('%s\n', '                "Microsoft.Compute/virtualMachines/restart/action", \')
            fprintf('%s\n', '                "Microsoft.Network/*/read", \')
            fprintf('%s\n', '                "Microsoft.Storage/*/read", \')
            fprintf('%s\n', '                "Microsoft.Authorization/*/read", \')
            fprintf('%s\n', '                "Microsoft.Resources/subscriptions/resourceGroups/read", \')
            fprintf('%s\n', '                "Microsoft.Resources/subscriptions/resourceGroups/resources/read", \')
            fprintf('%s\n', '                "Microsoft.Insights/alertRules/*", \')
            fprintf('%s\n', '                "Microsoft.Support/*" \')
            fprintf('%s\n', '            ], \')
            fprintf('%s\n', '            "DataActions": [ \')
            fprintf('%s\n', '                "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/*" \')
            fprintf('%s\n', '            ], \')
            fprintf('%s\n', '            "NotDataActions": [ \')
            fprintf('%s\n', '                "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/write" \')
            fprintf('%s\n', '            ], \')
            fprintf('%s\n', '            "AssignableScopes": ["/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"] \')
            fprintf('%s\n', '        }''')
            fprintf('%s\n', '    Create a role from a file containing a JSON description.')
            fprintf('%s\n', '        az role definition create --role-definition @ad-role.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az role definition create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
