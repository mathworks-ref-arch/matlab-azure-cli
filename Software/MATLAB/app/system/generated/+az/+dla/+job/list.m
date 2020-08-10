classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az dla job list : List Data Lake Analytics jobs.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla job list ';
        end
        function this = name(this, varargin)
            % A filter which returns jobs only by the specified friendly name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = pipeline_id(this, varargin)
            % A filter which returns jobs only containing the specified pipeline_id.
            this.Options = [this.Options, '--pipeline-id', varargin{:}];
        end

        function this = recurrence_id(this, varargin)
            % A filter which returns jobs only containing the specified recurrence_id.
            this.Options = [this.Options, '--recurrence-id', varargin{:}];
        end

        function this = result(this, varargin)
            % A filter which returns jobs with only the specified result(s).  Allowed values: Cancelled, Failed, None, Succeeded.
            this.Options = [this.Options, '--result', varargin{:}];
        end

        function this = state(this, varargin)
            % A filter which returns jobs with only the specified state(s).  Allowed values: Accepted, Compiling, Ended, New, Paused, Queued, Running, Scheduling, Starting, WaitingForCapacity.
            this.Options = [this.Options, '--state', varargin{:}];
        end

        function this = submitted_after(this, varargin)
            % A filter which returns jobs only submitted after the specified time, in ISO-8601 format.
            this.Options = [this.Options, '--submitted-after', varargin{:}];
        end

        function this = submitted_before(this, varargin)
            % A filter which returns jobs only submitted before the specified time, in ISO-8601 format.
            this.Options = [this.Options, '--submitted-before', varargin{:}];
        end

        function this = submitter(this, varargin)
            % A filter which returns jobs only by the specified submitter.
            this.Options = [this.Options, '--submitter', varargin{:}];
        end

        function this = top(this, varargin)
            % Maximum number of items to return.  Default: 500.
            this.Options = [this.Options, '--top', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla job list"
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
            fprintf('%s\n', '    az dla job list : List Data Lake Analytics jobs.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name             : A filter which returns jobs only by the specified friendly name.')
            fprintf('%s\n', '    --pipeline-id      : A filter which returns jobs only containing the specified pipeline_id.')
            fprintf('%s\n', '    --recurrence-id    : A filter which returns jobs only containing the specified recurrence_id.')
            fprintf('%s\n', '    --result           : A filter which returns jobs with only the specified result(s).  Allowed')
            fprintf('%s\n', '                         values: Cancelled, Failed, None, Succeeded.')
            fprintf('%s\n', '    --state            : A filter which returns jobs with only the specified state(s).  Allowed')
            fprintf('%s\n', '                         values: Accepted, Compiling, Ended, New, Paused, Queued, Running,')
            fprintf('%s\n', '                         Scheduling, Starting, WaitingForCapacity.')
            fprintf('%s\n', '    --submitted-after  : A filter which returns jobs only submitted after the specified time, in')
            fprintf('%s\n', '                         ISO-8601 format.')
            fprintf('%s\n', '    --submitted-before : A filter which returns jobs only submitted before the specified time, in')
            fprintf('%s\n', '                         ISO-8601 format.')
            fprintf('%s\n', '    --submitter        : A filter which returns jobs only by the specified submitter.')
            fprintf('%s\n', '    --top              : Maximum number of items to return.  Default: 500.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n       : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids              : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                         resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                         should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla job list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
