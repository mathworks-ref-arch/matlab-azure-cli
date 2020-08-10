classdef set_attributes < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_attributes()
            % az keyvault secret set-attributes : Updates the attributes associated with a specified secret in
            % a given key vault.
            % The UPDATE operation changes specified attributes of an existing stored secret. Attributes
            % that are not specified in the request are left unchanged. The value of a secret itself
            % cannot be changed. This operation requires the secrets/set permission.
            this.BaseCmd = 'az keyvault secret set-attributes ';
        end
        function this = content_type(this, varargin)
            % Type of the secret value such as a password.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Enable the secret.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = expires(this, varargin)
            % Expiration UTC datetime  (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--expires', varargin{:}];
        end

        function this = not_before(this, varargin)
            % Key not usable before the provided UTC datetime  (Y-m-d'T'H:M:S'Z').
            this.Options = [this.Options, '--not-before', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault secret set-attributes"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = id(this, varargin)
            % Id of the secret. If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the secret. Required if --id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Required if --id is not specified.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = version(this, varargin)
            % The secret version. If omitted, uses the latest version.
            this.Options = [this.Options, '--version', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault secret set-attributes : Updates the attributes associated with a specified secret in')
            fprintf('%s\n', '    a given key vault.')
            fprintf('%s\n', '        The UPDATE operation changes specified attributes of an existing stored secret. Attributes')
            fprintf('%s\n', '        that are not specified in the request are left unchanged. The value of a secret itself')
            fprintf('%s\n', '        cannot be changed. This operation requires the secrets/set permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --content-type     : Type of the secret value such as a password.')
            fprintf('%s\n', '    --enabled          : Enable the secret.  Allowed values: false, true.')
            fprintf('%s\n', '    --expires          : Expiration UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --not-before       : Key not usable before the provided UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --tags             : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                         existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id               : Id of the secret. If specified all other ''Id'' arguments should be omitted.')
            fprintf('%s\n', '    --name -n          : Name of the secret. Required if --id is not specified.')
            fprintf('%s\n', '    --vault-name       : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', '    --version -v       : The secret version. If omitted, uses the latest version.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault secret set-attributes"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_attributes 
