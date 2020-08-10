classdef get_default_policy < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = get_default_policy()
            % az keyvault certificate get-default-policy : Get the default policy for self-signed
            % certificates.
            % This default policy can be used in conjunction with `az keyvault create` to create a self-
            % signed certificate.
            % The default policy can also be used as a starting point to create derivative policies.
            % For more details, see: https://docs.microsoft.com/rest/api/keyvault/certificates-and-
            % policies.
            this.BaseCmd = 'az keyvault certificate get-default-policy ';
        end
        function this = scaffold(this, varargin)
            % Create a fully formed policy structure with default values.
            this.Options = [this.Options, '--scaffold', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault certificate get-default-policy : Get the default policy for self-signed')
            fprintf('%s\n', '    certificates.')
            fprintf('%s\n', '        This default policy can be used in conjunction with `az keyvault create` to create a self-')
            fprintf('%s\n', '        signed certificate.')
            fprintf('%s\n', '        The default policy can also be used as a starting point to create derivative policies.')
            fprintf('%s\n', '        For more details, see: https://docs.microsoft.com/rest/api/keyvault/certificates-and-')
            fprintf('%s\n', '        policies.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --scaffold         : Create a fully formed policy structure with default values.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a self-signed certificate with the default policy')
            fprintf('%s\n', '        az keyvault certificate create --vault-name vaultname -n cert1 \')
            fprintf('%s\n', '          -p "$(az keyvault certificate get-default-policy)"')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate get-default-policy"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class get_default_policy 
