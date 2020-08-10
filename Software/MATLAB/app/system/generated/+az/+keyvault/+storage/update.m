classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az keyvault storage update : Updates the specified attributes associated with the given storage
            % account.
            % This operation requires the storage/set/update permission.
            this.BaseCmd = 'az keyvault storage update ';
        end
        function this = active_key_name(this, varargin)
            % The current active storage account key name.
            this.Options = [this.Options, '--active-key-name', varargin{:}];
        end

        function this = auto_regenerate_key(this, varargin)
            % Whether keyvault should manage the storage account for the user. Allowed values: false, true.
            this.Options = [this.Options, '--auto-regenerate-key', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Add the storage account in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = regeneration_period(this, varargin)
            % The key regeneration time duration specified in ISO-8601 format, such as "P30D" for rotation every 30 days.
            this.Options = [this.Options, '--regeneration-period', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault storage update"
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
            fprintf('%s\n', '    az keyvault storage update : Updates the specified attributes associated with the given storage')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', '        This operation requires the storage/set/update permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --active-key-name     : The current active storage account key name.')
            fprintf('%s\n', '    --auto-regenerate-key : Whether keyvault should manage the storage account for the user.')
            fprintf('%s\n', '                            Allowed values: false, true.')
            fprintf('%s\n', '    --disabled            : Add the storage account in a disabled state.  Allowed values: false,')
            fprintf('%s\n', '                            true.')
            fprintf('%s\n', '    --regeneration-period : The key regeneration time duration specified in ISO-8601 format, such as')
            fprintf('%s\n', '                            "P30D" for rotation every 30 days.')
            fprintf('%s\n', '    --tags                : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                            existing tags.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault storage update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
