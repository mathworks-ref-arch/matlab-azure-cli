classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az keyvault secret list : List secrets in a specified key vault.
            % The Get Secrets operation is applicable to the entire vault. However, only the base secret
            % identifier and its attributes are provided in the response. Individual secret versions are
            % not listed in the response. This operation requires the secrets/list permission.
            this.BaseCmd = 'az keyvault secret list ';
        end
        function this = maxresults(this, varargin)
            % Maximum number of results to return in a page. If not specified, the service will return up to 25 results.
            this.Options = [this.Options, '--maxresults', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault secret list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the key vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault secret list : List secrets in a specified key vault.')
            fprintf('%s\n', '        The Get Secrets operation is applicable to the entire vault. However, only the base secret')
            fprintf('%s\n', '        identifier and its attributes are provided in the response. Individual secret versions are')
            fprintf('%s\n', '        not listed in the response. This operation requires the secrets/list permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --maxresults            : Maximum number of results to return in a page. If not specified, the')
            fprintf('%s\n', '                              service will return up to 25 results.')
            fprintf('%s\n', 'Id Arguments')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault secret list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
