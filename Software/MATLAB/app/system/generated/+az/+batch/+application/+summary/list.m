classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az batch application summary list : Lists all of the applications available in the specified
            % account.
            % This operation returns only applications and versions that are available for use on compute
            % nodes; that is, that can be used in an application package reference. For administrator
            % information about applications and versions that are not yet available to compute nodes, use
            % the Azure portal or the 'az batch application list' command.
            this.BaseCmd = 'az batch application summary list ';
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch application summary list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch application summary list : Lists all of the applications available in the specified')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', '        This operation returns only applications and versions that are available for use on compute')
            fprintf('%s\n', '        nodes; that is, that can be used in an application package reference. For administrator')
            fprintf('%s\n', '        information about applications and versions that are not yet available to compute nodes, use')
            fprintf('%s\n', '        the Azure portal or the ''az batch application list'' command.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key      : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name     : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                         AZURE_BATCH_ACCOUNT.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch application summary list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
