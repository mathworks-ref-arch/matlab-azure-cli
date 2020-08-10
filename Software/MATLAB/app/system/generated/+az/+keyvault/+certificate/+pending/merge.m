classdef merge < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = merge()
            % az keyvault certificate pending merge : Merges a certificate or a certificate chain with a key
            % pair existing on the server.
            % The MergeCertificate operation performs the merging of a certificate or certificate chain
            % with a key pair currently available in the service. This operation requires the
            % certificates/create permission.
            this.BaseCmd = 'az keyvault certificate pending merge ';
        end
        function this = file(this, varargin)
            % File containing the certificate or certificate chain to merge.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = disabled(this, varargin)
            % Create certificate in disabled state.  Allowed values: false, true.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault certificate pending merge"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the pending certificate.
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
            fprintf('%s\n', '    az keyvault certificate pending merge : Merges a certificate or a certificate chain with a key')
            fprintf('%s\n', '    pair existing on the server.')
            fprintf('%s\n', '        The MergeCertificate operation performs the merging of a certificate or certificate chain')
            fprintf('%s\n', '        with a key pair currently available in the service. This operation requires the')
            fprintf('%s\n', '        certificates/create permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file -f    [Required] : File containing the certificate or certificate chain to merge.')
            fprintf('%s\n', '    --disabled              : Create certificate in disabled state.  Allowed values: false, true.')
            fprintf('%s\n', '    --expires               : Expiration UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --not-before            : Key not usable before the provided UTC datetime  (Y-m-d''T''H:M:S''Z'').')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --name -n    [Required] : Name of the pending certificate.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate pending merge"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class merge 
