classdef delete_policy < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete_policy()
            % az keyvault delete-policy : Delete security policy settings for a Key Vault.
            this.BaseCmd = 'az keyvault delete-policy ';
        end
        function this = name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = object_id(this, varargin)
            % A GUID that identifies the principal that will receive permissions.
            this.Options = [this.Options, '--object-id', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Proceed only if Key Vault belongs to the specified resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = spn(this, varargin)
            % Name of a service principal that will receive permissions.
            this.Options = [this.Options, '--spn', varargin{:}];
        end

        function this = upn(this, varargin)
            % Name of a user principal that will receive permissions.
            this.Options = [this.Options, '--upn', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault delete-policy"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault delete-policy : Delete security policy settings for a Key Vault.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the key vault.')
            fprintf('%s\n', '    --object-id          : A GUID that identifies the principal that will receive permissions.')
            fprintf('%s\n', '    --resource-group -g  : Proceed only if Key Vault belongs to the specified resource group.')
            fprintf('%s\n', '    --spn                : Name of a service principal that will receive permissions.')
            fprintf('%s\n', '    --upn                : Name of a user principal that will receive permissions.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault delete-policy"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete_policy 
