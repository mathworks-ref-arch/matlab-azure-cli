classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dla catalog credential create : Create a new catalog credential for use with an external data
            % source.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla catalog credential create ';
        end
        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = credential_name(this, varargin)
            % The name of the credential.
            this.Options = [this.Options, '--credential-name', varargin{:}];
        end

        function this = database_name(this, varargin)
            % The name of the database in which to create the credential.
            this.Options = [this.Options, '--database-name', varargin{:}];
        end

        function this = uri(this, varargin)
            % URI of the external data source.
            this.Options = [this.Options, '--uri', varargin{:}];
        end

        function this = user_name(this, varargin)
            % The user name that will be used when authenticating with this credential.
            this.Options = [this.Options, '--user-name', varargin{:}];
        end

        function this = password(this, varargin)
            % Password for the credential user. Will prompt if not given.
            this.Options = [this.Options, '--password', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla catalog credential create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dla catalog credential create : Create a new catalog credential for use with an external data')
            fprintf('%s\n', '    source.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account -n      [Required] : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --credential-name [Required] : The name of the credential.')
            fprintf('%s\n', '    --database-name   [Required] : The name of the database in which to create the credential.')
            fprintf('%s\n', '    --uri             [Required] : URI of the external data source.')
            fprintf('%s\n', '    --user-name       [Required] : The user name that will be used when authenticating with this')
            fprintf('%s\n', '                                   credential.')
            fprintf('%s\n', '    --password -p                : Password for the credential user. Will prompt if not given.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla catalog credential create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
