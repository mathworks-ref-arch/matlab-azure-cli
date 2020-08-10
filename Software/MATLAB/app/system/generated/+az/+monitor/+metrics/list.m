classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az monitor metrics list : List the metric values for a resource.
            this.BaseCmd = 'az monitor metrics list ';
        end
        function this = aggregation(this, varargin)
            % The list of aggregation types (space-separated) to retrieve.  Allowed values: Average, Count, Maximum, Minimum, Total.  Values from: az monitor metrics list-definitions.
            this.Options = [this.Options, '--aggregation', varargin{:}];
        end

        function this = dimension(this, varargin)
            % The list of dimensions (space-separated) the metrics are queried into. Values from: az monitor metrics list-definitions.
            this.Options = [this.Options, '--dimension', varargin{:}];
        end

        function this = filter(this, varargin)
            % A string used to reduce the set of metric data returned. eg. "BlobType eq '*'". For a full list of filters, see the filter string reference at https://docs.microsoft.com/rest/api/monitor/metrics/list.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Returns the metadata values instead of metric data.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = metrics(this, varargin)
            % Space-separated list of metric names to retrieve.  Values from: az monitor metrics list-definitions.
            this.Options = [this.Options, '--metrics', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Namespace to query metric definitions for.  Values from: az monitor metrics list-definitions.
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = orderby(this, varargin)
            % Aggregation to use for sorting results and the direction of the sort. Only one order can be specificed. Examples: sum asc.
            this.Options = [this.Options, '--orderby', varargin{:}];
        end

        function this = top(this, varargin)
            % Max number of records to retrieve. Valid only if --filter used. Default: 10. Target Resource Arguments
            this.Options = [this.Options, '--top', varargin{:}];
        end

        function this = resource(this, varargin)
            % Name or ID of the target resource.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_namespace(this, varargin)
            % Target resource provider namespace.
            this.Options = [this.Options, '--resource-namespace', varargin{:}];
        end

        function this = resource_parent(this, varargin)
            % Target resource parent path, if applicable.
            this.Options = [this.Options, '--resource-parent', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Target resource type. Can also accept namespace/type format (Ex: 'Microsoft.Compute/virtualMachines'). Time Arguments
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

        function this = end_time(this, varargin)
            % End time of the query. Defaults to the current time. Format: date (yyyy- mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).
            this.Options = [this.Options, '--end-time', varargin{:}];
        end

        function this = interval(this, varargin)
            % The interval over which to aggregate metrics, in ##h##m format. Default: 1m.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = offset(this, varargin)
            % Time offset of the query range, in ##d##h format.  Default: 1h. Can be used with either --start-time or --end-time. If used with --start-time, then the end time will be calculated by adding the offset. If used with --end-time (default), then the start time will be calculated by subtracting the offset. If --start-time and --end-time are provided, then --offset will be ignored.
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
            fprintf('%s\n', '    az monitor metrics list : List the metric values for a resource.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --aggregation         : The list of aggregation types (space-separated) to retrieve.  Allowed')
            fprintf('%s\n', '                            values: Average, Count, Maximum, Minimum, Total.  Values from: az')
            fprintf('%s\n', '                            monitor metrics list-definitions.')
            fprintf('%s\n', '    --dimension           : The list of dimensions (space-separated) the metrics are queried into.')
            fprintf('%s\n', '                            Values from: az monitor metrics list-definitions.')
            fprintf('%s\n', '    --filter              : A string used to reduce the set of metric data returned. eg. "BlobType')
            fprintf('%s\n', '                            eq ''*''".')
            fprintf('%s\n', '        For a full list of filters, see the filter string reference at')
            fprintf('%s\n', '        https://docs.microsoft.com/rest/api/monitor/metrics/list.')
            fprintf('%s\n', '    --metadata            : Returns the metadata values instead of metric data.')
            fprintf('%s\n', '    --metrics             : Space-separated list of metric names to retrieve.  Values from: az')
            fprintf('%s\n', '                            monitor metrics list-definitions.')
            fprintf('%s\n', '    --namespace           : Namespace to query metric definitions for.  Values from: az monitor')
            fprintf('%s\n', '                            metrics list-definitions.')
            fprintf('%s\n', '    --orderby             : Aggregation to use for sorting results and the direction of the sort.')
            fprintf('%s\n', '                            Only one order can be specificed. Examples: sum asc.')
            fprintf('%s\n', '    --top                 : Max number of records to retrieve. Valid only if --filter used.')
            fprintf('%s\n', '                            Default: 10.')
            fprintf('%s\n', 'Target Resource Arguments')
            fprintf('%s\n', '    --resource [Required] : Name or ID of the target resource.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-namespace  : Target resource provider namespace.')
            fprintf('%s\n', '    --resource-parent     : Target resource parent path, if applicable.')
            fprintf('%s\n', '    --resource-type       : Target resource type. Can also accept namespace/type format (Ex:')
            fprintf('%s\n', '                            ''Microsoft.Compute/virtualMachines'').')
            fprintf('%s\n', 'Time Arguments')
            fprintf('%s\n', '    --end-time            : End time of the query. Defaults to the current time. Format: date (yyyy-')
            fprintf('%s\n', '                            mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).')
            fprintf('%s\n', '    --interval            : The interval over which to aggregate metrics, in ##h##m format.')
            fprintf('%s\n', '                            Default: 1m.')
            fprintf('%s\n', '    --offset              : Time offset of the query range, in ##d##h format.  Default: 1h.')
            fprintf('%s\n', '        Can be used with either --start-time or --end-time. If used with --start-time, then the end')
            fprintf('%s\n', '        time will be calculated by adding the offset. If used with --end-time (default), then the')
            fprintf('%s\n', '        start time will be calculated by subtracting the offset. If --start-time and --end-time are')
            fprintf('%s\n', '        provided, then --offset will be ignored.')
            fprintf('%s\n', '    --start-time          : Start time of the query. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx)')
            fprintf('%s\n', '                            timezone (+/-hh:mm).')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List a VM''s CPU usage for the past hour')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric "Percentage CPU"')
            fprintf('%s\n', '    List success E2E latency of a storage account and split the data series based on API name')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric SuccessE2ELatency \')
            fprintf('%s\n', '                                --dimension ApiName')
            fprintf('%s\n', '    List success E2E latency of a storage account and split the data series based on both API name')
            fprintf('%s\n', '    and geo type')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric SuccessE2ELatency \')
            fprintf('%s\n', '                                --dimension ApiName GeoType')
            fprintf('%s\n', '    List success E2E latency of a storage account and split the data series based on both API name')
            fprintf('%s\n', '    and geo type using "--filter" parameter')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric SuccessE2ELatency \')
            fprintf('%s\n', '                                --filter "ApiName eq ''*'' and GeoType eq ''*''"')
            fprintf('%s\n', '    List success E2E latency of a storage account and split the data series based on both API name')
            fprintf('%s\n', '    and geo type. Limits the api name to ''DeleteContainer''')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric SuccessE2ELatency \')
            fprintf('%s\n', '                                --filter "ApiName eq ''DeleteContainer'' and GeoType eq ''*''"')
            fprintf('%s\n', '    List transactions of a storage account per day since 2017-01-01')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric Transactions \')
            fprintf('%s\n', '                                --start-time 2017-01-01T00:00:00Z \')
            fprintf('%s\n', '                                --interval PT24H')
            fprintf('%s\n', '    List the metadata values for a storage account under transaction metric''s api name dimension')
            fprintf('%s\n', '    since 2017')
            fprintf('%s\n', '        az monitor metrics list --resource {ResourceName} --metric Transactions \')
            fprintf('%s\n', '                                --filter "ApiName eq ''*''" \')
            fprintf('%s\n', '                                --start-time 2017-01-01T00:00:00Z')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor metrics list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
