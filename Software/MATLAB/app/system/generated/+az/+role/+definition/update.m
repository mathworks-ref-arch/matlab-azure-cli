classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az role definition update : Update a role definition.
            this.BaseCmd = 'az role definition update ';
        end
        function this = role_definition(this, varargin)
            % Description of an existing role as JSON, or a path to a file containing a JSON description.
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
            fprintf('%s\n', '    az role definition update : Update a role definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --role-definition [Required] : Description of an existing role as JSON, or a path to a file')
            fprintf('%s\n', '                                   containing a JSON description.')
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
            fprintf('%s\n', '    Update a role using the output of "az role definition list"')
            fprintf('%s\n', '        az role definition update --role-definition ''{ \')
            fprintf('%s\n', '            "roleName": "Contoso On-call", \')
            fprintf('%s\n', '            "Description": "Perform VM actions and read storage and network information.", \')
            fprintf('%s\n', '            "id": "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-')
            fprintf('%s\n', '        xxxxxxxxxxxx/providers/Microsoft.Authorization/roleDefinitions/xxxxxxxx-xxxx-xxxx-xxxx-')
            fprintf('%s\n', '        xxxxxxxxxxxx", \')
            fprintf('%s\n', '            "roleType": "CustomRole", \')
            fprintf('%s\n', '            "type": "Microsoft.Authorization/roleDefinitions", \')
            fprintf('%s\n', '            "Actions": [ \')
            fprintf('%s\n', '                "Microsoft.Compute/*/read", \')
            fprintf('%s\n', '                "Microsoft.Compute/virtualMachines/start/action", \')
            fprintf('%s\n', '                "Microsoft.Compute/virtualMachines/restart/action", \')
            fprintf('%s\n', '                "Microsoft.Network/*/read", \')
            fprintf('%s\n', '                "Microsoft.Storage/*/read", \')
            fprintf('%s\n', '                "Microsoft.Authorization/*/read", \')
            fprintf('%s\n', '                "Microsoft.Resources/subscriptions/resourceGroups/read", \')
            fprintf('%s\n', '                "Microsoft.Resources/subscriptions/resourceGroups/resources/read", \')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az role definition update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
