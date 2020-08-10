classdef show_deleted < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_deleted()
            % az keyvault certificate show-deleted : Retrieves information about the specified deleted
            % certificate.
            % The GetDeletedCertificate operation retrieves the deleted certificate information plus its
            % attributes, such as retention interval, scheduled permanent deletion and the current
            % deletion recovery level. This operation requires the certificates/get permission.
            this.BaseCmd = 'az keyvault certificate show-deleted ';
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault certificate show-deleted"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = id(this, varargin)
            % The recovery id of the certificate.  If specified all other 'Id' arguments should be omitted.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the certificate. Required if --id is not specified.
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
            fprintf('%s\n', '    az keyvault certificate show-deleted : Retrieves information about the specified deleted')
            fprintf('%s\n', '    certificate.')
            fprintf('%s\n', '        The GetDeletedCertificate operation retrieves the deleted certificate information plus its')
            fprintf('%s\n', '        attributes, such as retention interval, scheduled permanent deletion and the current')
            fprintf('%s\n', '        deletion recovery level. This operation requires the certificates/get permission.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Id Arguments')
            fprintf('%s\n', '    --id               : The recovery id of the certificate.  If specified all other ''Id'' arguments')
            fprintf('%s\n', '                         should be omitted.')
            fprintf('%s\n', '    --name -n          : Name of the certificate. Required if --id is not specified.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault certificate show-deleted"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_deleted 
