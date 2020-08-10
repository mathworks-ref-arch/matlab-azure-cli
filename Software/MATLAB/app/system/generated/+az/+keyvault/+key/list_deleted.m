classdef list_deleted < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_deleted()
            % az keyvault key list-deleted : Lists the deleted keys in the specified vault.
            % Retrieves a list of the keys in the Key Vault as JSON Web Key structures that contain the
            % public part of a deleted key. This operation includes deletion-specific information. The Get
            % Deleted Keys operation is applicable for vaults enabled for soft-delete. While the operation
            % can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled
            % vault. This operation requires the keys/list permission.
            this.BaseCmd = 'az keyvault key list-deleted ';
        end
        function this = maxresults(this, varargin)
            % Maximum number of results to return in a page. If not specified the service will return up to 25 results.
            this.Options = [this.Options, '--maxresults', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault key list-deleted"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault key list-deleted : Lists the deleted keys in the specified vault.')
            fprintf('%s\n', '        Retrieves a list of the keys in the Key Vault as JSON Web Key structures that contain the')
            fprintf('%s\n', '        public part of a deleted key. This operation includes deletion-specific information. The Get')
            fprintf('%s\n', '        Deleted Keys operation is applicable for vaults enabled for soft-delete. While the operation')
            fprintf('%s\n', '        can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled')
            fprintf('%s\n', '        vault. This operation requires the keys/list permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --maxresults            : Maximum number of results to return in a page. If not specified the')
            fprintf('%s\n', '                              service will return up to 25 results.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --vault-name [Required] : Name of the key vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key list-deleted"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_deleted 
