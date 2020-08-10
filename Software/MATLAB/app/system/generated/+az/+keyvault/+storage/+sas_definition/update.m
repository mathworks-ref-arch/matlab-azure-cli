classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az keyvault storage sas-definition update : Updates the specified attributes associated with the
            % given SAS definition.
            % This operation requires the storage/setsas permission.
            this.BaseCmd = 'az keyvault storage sas-definition update ';
        end
        function this = disabled(this, varargin)
            % Add the storage account in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = sas_type(this, varargin)
            % The type of SAS token the SAS definition will create.  Allowed values: account, service.
            this.Options = [this.Options, '--sas-type', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = template_uri(this, varargin)
            % The SAS definition token template signed with the key 00000000.  In the case of an account token this is only the sas token itself, for service tokens, the full service endpoint url along with the sas token.  Tokens created according to the SAS definition will have the same properties as the template.
            this.Options = [this.Options, '--template-uri', varargin{:}];
        end

        function this = validity_period(this, varargin)
            % The validity period of SAS tokens created according to the SAS definition in ISO-8601, such as "PT12H" for 12 hour tokens.
            this.Options = [this.Options, '--validity-period', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault storage sas-definition update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Name to identify the storage account in the vault. Required if --id is not specified.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = id(this, varargin)
            % Id of the SAS definition.  If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name to identify the SAS definition in the vault. Required if --id is not specified.
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
            fprintf('%s\n', '    az keyvault storage sas-definition update : Updates the specified attributes associated with the')
            fprintf('%s\n', '    given SAS definition.')
            fprintf('%s\n', '        This operation requires the storage/setsas permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disabled         : Add the storage account in a disabled state.  Allowed values: false, true.')
            fprintf('%s\n', '    --sas-type         : The type of SAS token the SAS definition will create.  Allowed values:')
            fprintf('%s\n', '                         account, service.')
            fprintf('%s\n', '    --tags             : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                         existing tags.')
            fprintf('%s\n', '    --template-uri     : The SAS definition token template signed with the key 00000000.  In the')
            fprintf('%s\n', '                         case of an account token this is only the sas token itself, for service')
            fprintf('%s\n', '                         tokens, the full service endpoint url along with the sas token.  Tokens')
            fprintf('%s\n', '                         created according to the SAS definition will have the same properties as')
            fprintf('%s\n', '                         the template.')
            fprintf('%s\n', '    --validity-period  : The validity period of SAS tokens created according to the SAS definition')
            fprintf('%s\n', '                         in ISO-8601, such as "PT12H" for 12 hour tokens.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --account-name     : Name to identify the storage account in the vault. Required if --id is not')
            fprintf('%s\n', '                         specified.')
            fprintf('%s\n', '    --id               : Id of the SAS definition.  If specified all other ''Id'' arguments should be')
            fprintf('%s\n', '                         omitted.')
            fprintf('%s\n', '    --name -n          : Name to identify the SAS definition in the vault. Required if --id is not')
            fprintf('%s\n', '                         specified.')
            fprintf('%s\n', '    --vault-name       : Name of the key vault. Required if --id is not specified.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault storage sas-definition update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
