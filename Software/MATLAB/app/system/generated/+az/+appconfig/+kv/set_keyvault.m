classdef set_keyvault < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_keyvault()
            % az appconfig kv set-keyvault : Set a keyvault reference.
            this.BaseCmd = 'az appconfig kv set-keyvault ';
        end
        function this = key(this, varargin)
            % Key to be set. Key cannot be a '.' or '..', or contain the '%' character.
            this.Options = [this.Options, '--key', varargin{:}];
        end

        function this = secret_identifier(this, varargin)
            % ID of the Key Vault object. Can be found using 'az keyvault {collection} show' command, where collection is key, secret or certificate. To set reference to the latest version of your secret, remove version information from secret identifier.
            this.Options = [this.Options, '--secret-identifier', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = label(this, varargin)
            % If no label specified, set the key with null label by default.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
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
            fprintf('%s\n', '    az appconfig kv set-keyvault : Set a keyvault reference.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --key               [Required] : Key to be set. Key cannot be a ''.'' or ''..'', or contain the ''%''')
            fprintf('%s\n', '                                     character.')
            fprintf('%s\n', '    --secret-identifier [Required] : ID of the Key Vault object. Can be found using ''az keyvault')
            fprintf('%s\n', '                                     {collection} show'' command, where collection is key, secret or')
            fprintf('%s\n', '                                     certificate. To set reference to the latest version of your')
            fprintf('%s\n', '                                     secret, remove version information from secret identifier.')
            fprintf('%s\n', '    --connection-string            : Combination of access key and endpoint of App Configuration.')
            fprintf('%s\n', '                                     Can be found using ''az appconfig credential list''. Users can')
            fprintf('%s\n', '                                     preset it using `az configure --defaults')
            fprintf('%s\n', '                                     appconfig_connection_string=<connection_string>` or environment')
            fprintf('%s\n', '                                     variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --label                        : If no label specified, set the key with null label by default.')
            fprintf('%s\n', '    --name -n                      : Name of the App Configuration. You can configure the default')
            fprintf('%s\n', '                                     name using `az configure --defaults')
            fprintf('%s\n', '                                     app_configuration_store=<name>`.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --yes -y                       : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set a keyvault reference with label MyLabel.')
            fprintf('%s\n', '        az appconfig kv set-keyvault -n MyAppConfiguration --key HostSecret --label MyLabel')
            fprintf('%s\n', '        --secret-identifier https://contoso.vault.azure.net/Secrets/DummySecret/Dummyversion')
            fprintf('%s\n', '    Set a keyvault reference with null label and multiple tags using connection string.')
            fprintf('%s\n', '        az appconfig kv set-keyvault --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --key HostSecret --secret-identifier')
            fprintf('%s\n', '        https://contoso.vault.azure.net/Secrets/DummySecret --tags tag1=value1 tag2=value2')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig kv set-keyvault"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_keyvault 
