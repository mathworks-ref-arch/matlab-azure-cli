classdef download < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download()
            % az keyvault key download : Downloads the public part of a stored key.
            this.BaseCmd = 'az keyvault key download ';
        end
        function this = file(this, varargin)
            % File to receive the key contents.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = encoding(this, varargin)
            % Encoding of the key, default: PEM.  Allowed values: DER, PEM.  Default: PEM.
            this.Options = [this.Options, '--encoding', varargin{:}];
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

        function this = id(this, varargin)
            % Id of the key. If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the key. Required if --id is not specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault. Required if --id is not specified.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = version(this, varargin)
            % The key version. If omitted, uses the latest version.
            this.Options = [this.Options, '--version', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault key download : Downloads the public part of a stored key.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file -f [Required] : File to receive the key contents.')
            fprintf('%s\n', '    --encoding -e        : Encoding of the key, default: PEM.  Allowed values: DER, PEM.  Default:')
            fprintf('%s\n', '                           PEM.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id                 : Id of the key. If specified all other ''Id'' arguments should be omitted.')
            fprintf('%s\n', '    --name -n            : Name of the key. Required if --id is not specified.')
            fprintf('%s\n', '    --vault-name         : Name of the key vault. Required if --id is not specified.')
            fprintf('%s\n', '    --version -v         : The key version. If omitted, uses the latest version.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Save the key with PEM encoding')
            fprintf('%s\n', '        az keyvault key download --vault-name MyKeyVault -n MyKey -e PEM -f mykey.pem')
            fprintf('%s\n', '    Save the key with DER encoding')
            fprintf('%s\n', '        az keyvault key download --vault-name MyKeyVault -n MyKey -e DER -f mykey.der')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault key download"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download 
