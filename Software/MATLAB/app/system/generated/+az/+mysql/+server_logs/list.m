classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az mysql server-logs list : List log files for a server.
            this.BaseCmd = 'az mysql server-logs list ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server_name(this, varargin)
            % Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters.
            this.Options = [this.Options, '--server-name', varargin{:}];
        end

        function this = file_last_written(this, varargin)
            % Integer in hours to indicate file last modify time, default value is 72.
            this.Options = [this.Options, '--file-last-written', varargin{:}];
        end

        function this = filename_contains(this, varargin)
            % The pattern that file name should match.
            this.Options = [this.Options, '--filename-contains', varargin{:}];
        end

        function this = max_file_size(this, varargin)
            % The file size limitation to filter files.
            this.Options = [this.Options, '--max-file-size', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az mysql server-logs list : List log files for a server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server-name -s    [Required] : Name of the server. The name can contain only lowercase')
            fprintf('%s\n', '                                     letters, numbers, and the hyphen (-) character. Minimum 3')
            fprintf('%s\n', '                                     characters and maximum 63 characters.')
            fprintf('%s\n', '    --file-last-written            : Integer in hours to indicate file last modify time, default')
            fprintf('%s\n', '                                     value is 72.')
            fprintf('%s\n', '    --filename-contains            : The pattern that file name should match.')
            fprintf('%s\n', '    --max-file-size                : The file size limitation to filter files.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List log files for ''testsvr'' modified in the last 72 hours (default value).')
            fprintf('%s\n', '        az mysql server-logs list -g testgroup -s testsvr')
            fprintf('%s\n', '    List log files for ''testsvr'' modified in the last 10 hours.')
            fprintf('%s\n', '        az mysql server-logs list -g testgroup -s testsvr --file-last-written 10')
            fprintf('%s\n', '    List log files for ''testsvr'' less than 30Kb in size.')
            fprintf('%s\n', '        az mysql server-logs list -g testgroup -s testsvr --max-file-size 30')
            fprintf('%s\n', 'For more specific examples, use: az find "az mysql server-logs list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
