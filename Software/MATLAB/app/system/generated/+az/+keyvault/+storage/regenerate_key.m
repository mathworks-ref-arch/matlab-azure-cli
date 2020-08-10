classdef regenerate_key < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = regenerate_key()
            % az keyvault storage regenerate-key : Regenerates the specified key value for the given storage
            % account.
            % This operation requires the storage/regeneratekey permission.
            this.BaseCmd = 'az keyvault storage regenerate-key ';
        end
        function this = key_name(this, varargin)
            % The storage account key name.
            this.Options = [this.Options, '--key-name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault storage regenerate-key"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = id(this, varargin)
            % Id of the storage account.  If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name to identify the storage account in the vault. Required if --id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Required if --id is not specified.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault storage regenerate-key : Regenerates the specified key value for the given storage')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', '        This operation requires the storage/regeneratekey permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --key-name [Required] : The storage account key name.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id                  : Id of the storage account.  If specified all other ''Id'' arguments should')
            fprintf('%s\n', '                            be omitted.')
            fprintf('%s\n', '    --name -n             : Name to identify the storage account in the vault. Required if --id is')
            fprintf('%s\n', '                            not specified.')
            fprintf('%s\n', '    --vault-name          : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault storage regenerate-key"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class regenerate_key 
