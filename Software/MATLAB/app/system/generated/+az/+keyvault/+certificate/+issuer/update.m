classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az keyvault certificate issuer update : Update a certificate issuer record.
            this.BaseCmd = 'az keyvault certificate issuer update ';
        end
        function this = issuer_name(this, varargin)
            % Certificate issuer name.
            this.Options = [this.Options, '--issuer-name', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Set issuer enabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = provider_name(this, varargin)
            % The certificate provider name. Must be registered with your tenant ID and in your region.
            this.Options = [this.Options, '--provider-name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault certificate issuer update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Issuer Credential Arguments
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = account_id(this, varargin)
            % The issuer account id/username/etc.
            this.Options = [this.Options, '--account-id', varargin{:}];
        end

        function this = password(this, varargin)
            % The issuer account password/secret/etc. Organization Detail Arguments
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = organization_id(this, varargin)
            % The organization id.
            this.Options = [this.Options, '--organization-id', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault certificate issuer update : Update a certificate issuer record.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --issuer-name [Required] : Certificate issuer name.')
            fprintf('%s\n', '    --enabled                : Set issuer enabled state.  Allowed values: false, true.')
            fprintf('%s\n', '    --provider-name          : The certificate provider name. Must be registered with your tenant ID')
            fprintf('%s\n', '                               and in your region.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --vault-name  [Required] : Name of the key vault.')
            fprintf('%s\n', 'Issuer Credential Arguments')
            fprintf('%s\n', '    --account-id             : The issuer account id/username/etc.')
            fprintf('%s\n', '    --password               : The issuer account password/secret/etc.')
            fprintf('%s\n', 'Organization Detail Arguments')
            fprintf('%s\n', '    --organization-id        : The organization id.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate issuer update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
