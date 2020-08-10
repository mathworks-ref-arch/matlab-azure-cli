classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az keyvault secret set : Create a secret (if one doesn't exist) or update a secret in a
            % KeyVault.
            this.BaseCmd = 'az keyvault secret set ';
        end
        function this = description(this, varargin)
            % Description of the secret contents (e.g. password, connection string, etc).
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Create secret in disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
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
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Content Source Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = encoding(this, varargin)
            % Source file encoding. The value is saved as a tag (`file- encoding=<val>`) and used during download to automatically encode the resulting file.  Allowed values: ascii, base64, hex, utf-16be, utf-16le, utf-8.  Default: utf-8.
            this.Options = [this.Options, '--encoding', varargin{:}];
        end

        function this = file(this, varargin)
            % Source file for secret. Use in conjunction with '--encoding'.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = value(this, varargin)
            % Plain text secret value. Cannot be used with '--file' or '--encoding'.
            this.Options = [this.Options, '--value', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault secret set"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the secret.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault secret set : Create a secret (if one doesn''t exist) or update a secret in a')
            fprintf('%s\n', '    KeyVault.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --description           : Description of the secret contents (e.g. password, connection string,')
            fprintf('%s\n', '                              etc).')
            fprintf('%s\n', '    --disabled              : Create secret in disabled state.  Allowed values: false, true.')
            fprintf('%s\n', '    --expires               : Expiration UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --not-before            : Key not usable before the provided UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Content Source Arguments')
            fprintf('%s\n', '    --encoding -e           : Source file encoding. The value is saved as a tag (`file-')
            fprintf('%s\n', '                              encoding=<val>`) and used during download to automatically encode the')
            fprintf('%s\n', '                              resulting file.  Allowed values: ascii, base64, hex, utf-16be,')
            fprintf('%s\n', '                              utf-16le, utf-8.  Default: utf-8.')
            fprintf('%s\n', '    --file -f               : Source file for secret. Use in conjunction with ''--encoding''.')
            fprintf('%s\n', '    --value                 : Plain text secret value. Cannot be used with ''--file'' or ''--encoding''.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --name -n    [Required] : Name of the secret.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault secret set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
