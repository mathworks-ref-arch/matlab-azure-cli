classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az batch job-schedule delete : Deletes a Job Schedule from the specified Account.
            % When you delete a Job Schedule, this also deletes all Jobs and Tasks under that schedule.
            % When Tasks are deleted, all the files in their working directories on the Compute Nodes are
            % also deleted (the retention period is ignored). The Job Schedule statistics are no longer
            % accessible once the Job Schedule is deleted, though they are still counted towards Account
            % lifetime statistics.
            this.BaseCmd = 'az batch job-schedule delete ';
        end
        function this = job_schedule_id(this, varargin)
            % The ID of the Job Schedule to delete.
            this.Options = [this.Options, '--job-schedule-id', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch job-schedule delete"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Pre-condition and Query Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = if_match(this, varargin)
            % An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource's current ETag on the service exactly matches the value specified by the client.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has been modified since the specified time.
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % An ETag value associated with the version of the resource known to the client. The operation will be performed only if the resource's current ETag on the service does not match the value specified by the client.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % A timestamp indicating the last modified time of the resource known to the client. The operation will be performed only if the resource on the service has not been modified since the specified time.
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch job-schedule delete : Deletes a Job Schedule from the specified Account.')
            fprintf('%s\n', '        When you delete a Job Schedule, this also deletes all Jobs and Tasks under that schedule.')
            fprintf('%s\n', '        When Tasks are deleted, all the files in their working directories on the Compute Nodes are')
            fprintf('%s\n', '        also deleted (the retention period is ignored). The Job Schedule statistics are no longer')
            fprintf('%s\n', '        accessible once the Job Schedule is deleted, though they are still counted towards Account')
            fprintf('%s\n', '        lifetime statistics.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-schedule-id [Required] : The ID of the Job Schedule to delete.')
            fprintf('%s\n', '    --yes -y                     : Do not prompt for confirmation.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint           : Batch service endpoint. Alternatively, set by environment')
            fprintf('%s\n', '                                   variable: AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key                : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                   AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name               : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                                   AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Pre-condition and Query Arguments')
            fprintf('%s\n', '    --if-match                   : An ETag value associated with the version of the resource known')
            fprintf('%s\n', '                                   to the client. The operation will be performed only if the')
            fprintf('%s\n', '                                   resource''s current ETag on the service exactly matches the value')
            fprintf('%s\n', '                                   specified by the client.')
            fprintf('%s\n', '    --if-modified-since          : A timestamp indicating the last modified time of the resource')
            fprintf('%s\n', '                                   known to the client. The operation will be performed only if the')
            fprintf('%s\n', '                                   resource on the service has been modified since the specified')
            fprintf('%s\n', '                                   time.')
            fprintf('%s\n', '    --if-none-match              : An ETag value associated with the version of the resource known')
            fprintf('%s\n', '                                   to the client. The operation will be performed only if the')
            fprintf('%s\n', '                                   resource''s current ETag on the service does not match the value')
            fprintf('%s\n', '                                   specified by the client.')
            fprintf('%s\n', '    --if-unmodified-since        : A timestamp indicating the last modified time of the resource')
            fprintf('%s\n', '                                   known to the client. The operation will be performed only if the')
            fprintf('%s\n', '                                   resource on the service has not been modified since the specified')
            fprintf('%s\n', '                                   time.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch job-schedule delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
