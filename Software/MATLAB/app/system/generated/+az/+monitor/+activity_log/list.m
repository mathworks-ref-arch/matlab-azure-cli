classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az monitor activity-log list : List and query activity log events.
            this.BaseCmd = 'az monitor activity-log list ';
        end
        function this = max_events(this, varargin)
            % Maximum number of records to return.  Default: 50.
            this.Options = [this.Options, '--max-events', varargin{:}];
        end

        function this = select(this, varargin)
            % Space-separated list of properties to return.  Allowed values: authorization, caller, category, claims, correlationId, description, eventDataId, eventName, eventTimestamp, httpRequest, id, level, operationId, operationName, properties, resourceGroupName, resourceId, resourceProviderName, resourceType, status, subStatus, submissionTimestamp, subscriptionId, tenantId. Filter Arguments
            this.Options = [this.Options, '--select', varargin{:}];
        end

        function this = caller(this, varargin)
            % Caller to query for, such as an e-mail address or service principal ID.
            this.Options = [this.Options, '--caller', varargin{:}];
        end

        function this = correlation_id(this, varargin)
            % Correlation ID to query.
            this.Options = [this.Options, '--correlation-id', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Resource provider namespace.
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_id(this, varargin)
            % ARM ID of a resource.
            this.Options = [this.Options, '--resource-id', varargin{:}];
        end

        function this = status(this, varargin)
            % Status to query for (ex: Failed). Time Arguments
            this.Options = [this.Options, '--status', varargin{:}];
        end

        function this = end_time(this, varargin)
            % End time of the query. Defaults to the current time. Format: date (yyyy- mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).
            this.Options = [this.Options, '--end-time', varargin{:}];
        end

        function this = offset(this, varargin)
            % Time offset of the query range, in ##d##h format.  Default: 6h. Can be used with either --start-time or --end-time. If used with --start-time, then the end time will be calculated by adding the offset. If used with --end-time (default), then the start time will be calculated by subtracting the offset. If --start-time and --end-time are provided, then --offset will be ignored.
            this.Options = [this.Options, '--offset', varargin{:}];
        end

        function this = start_time(this, varargin)
            % Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).
            this.Options = [this.Options, '--start-time', varargin{:}];
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
            fprintf('%s\n', '    az monitor activity-log list : List and query activity log events.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --max-events        : Maximum number of records to return.  Default: 50.')
            fprintf('%s\n', '    --select            : Space-separated list of properties to return.  Allowed values:')
            fprintf('%s\n', '                          authorization, caller, category, claims, correlationId, description,')
            fprintf('%s\n', '                          eventDataId, eventName, eventTimestamp, httpRequest, id, level,')
            fprintf('%s\n', '                          operationId, operationName, properties, resourceGroupName, resourceId,')
            fprintf('%s\n', '                          resourceProviderName, resourceType, status, subStatus,')
            fprintf('%s\n', '                          submissionTimestamp, subscriptionId, tenantId.')
            fprintf('%s\n', 'Filter Arguments')
            fprintf('%s\n', '    --caller            : Caller to query for, such as an e-mail address or service principal ID.')
            fprintf('%s\n', '    --correlation-id    : Correlation ID to query.')
            fprintf('%s\n', '    --namespace         : Resource provider namespace.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-id       : ARM ID of a resource.')
            fprintf('%s\n', '    --status            : Status to query for (ex: Failed).')
            fprintf('%s\n', 'Time Arguments')
            fprintf('%s\n', '    --end-time          : End time of the query. Defaults to the current time. Format: date (yyyy-')
            fprintf('%s\n', '                          mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).')
            fprintf('%s\n', '    --offset            : Time offset of the query range, in ##d##h format.  Default: 6h.')
            fprintf('%s\n', '        Can be used with either --start-time or --end-time. If used with --start-time, then the end')
            fprintf('%s\n', '        time will be calculated by adding the offset. If used with --end-time (default), then the')
            fprintf('%s\n', '        start time will be calculated by subtracting the offset. If --start-time and --end-time are')
            fprintf('%s\n', '        provided, then --offset will be ignored.')
            fprintf('%s\n', '    --start-time        : Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx)')
            fprintf('%s\n', '                          timezone (+/-hh:mm).')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List all events from July 1st, looking forward one week.')
            fprintf('%s\n', '        az monitor activity-log list --start-time 2018-07-01 --offset 7d')
            fprintf('%s\n', '    List events within the past six hours based on a correlation ID.')
            fprintf('%s\n', '        az monitor activity-log list --correlation-id b5eac9d2-e829-4c9a-9efb-586d19417c5f')
            fprintf('%s\n', '    List events within the past hour based on resource group.')
            fprintf('%s\n', '        az monitor activity-log list -g {ResourceGroup} --offset 1h')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor activity-log list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
