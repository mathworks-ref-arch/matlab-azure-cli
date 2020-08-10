classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az dla catalog credential update : Update a catalog credential for use with an external data
            % source.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla catalog credential update ';
        end
        function this = credential_name(this, varargin)
            % The name of the credential to update.
            this.Options = [this.Options, '--credential-name', varargin{:}];
        end

        function this = database_name(this, varargin)
            % The name of the database in which the credential exists.
            this.Options = [this.Options, '--database-name', varargin{:}];
        end

        function this = uri(this, varargin)
            % URI of the external data source.
            this.Options = [this.Options, '--uri', varargin{:}];
        end

        function this = user_name(this, varargin)
            % The user name associated with the credential that will have its password updated.
            this.Options = [this.Options, '--user-name', varargin{:}];
        end

        function this = new_password(this, varargin)
            % New password for the credential user. Will prompt if not given.
            this.Options = [this.Options, '--new-password', varargin{:}];
        end

        function this = password(this, varargin)
            % Current password for the credential user. Will prompt if not given.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla catalog credential update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dla catalog credential update : Update a catalog credential for use with an external data')
            fprintf('%s\n', '    source.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --credential-name [Required] : The name of the credential to update.')
            fprintf('%s\n', '    --database-name   [Required] : The name of the database in which the credential exists.')
            fprintf('%s\n', '    --uri             [Required] : URI of the external data source.')
            fprintf('%s\n', '    --user-name       [Required] : The user name associated with the credential that will have its')
            fprintf('%s\n', '                                   password updated.')
            fprintf('%s\n', '    --new-password               : New password for the credential user. Will prompt if not given.')
            fprintf('%s\n', '    --password -p                : Current password for the credential user. Will prompt if not')
            fprintf('%s\n', '                                   given.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                 : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla catalog credential update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
