classdef tail < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = tail()
            % az vm monitor metrics tail : List the metric values for a VM.
            % Command group 'vm monitor metrics' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az vm monitor metrics tail ';
        end
        function this = name(this, varargin)
            % Name or ID of a virtual machine.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = aggregation(this, varargin)
            % The list of aggregation types (space-separated) to retrieve. Allowed values: Average, Count, Maximum, Minimum, Total. Values from: az vm monitor metrics list-definitions -n MyVM -g MyRG --query "@[*].supportedAggregationTypes".
            this.Options = [this.Options, '--aggregation', varargin{:}];
        end

        function this = dimension(this, varargin)
            % The list of dimensions (space-separated) the metrics are queried into.  Values from: az vm monitor metrics list- definitions -n MyVM -g MyRG --query "@[*].dimensions".
            this.Options = [this.Options, '--dimension', varargin{:}];
        end

        function this = filter(this, varargin)
            % A string used to reduce the set of metric data returned. eg. "LUN eq '*'". For a full list of filters, see the filter string reference at https://docs.microsoft.com/rest/api/monitor/metrics/list.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Return the metadata values instead of metric data.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = metrics(this, varargin)
            % Space-separated list of metric names to retrieve.  Values from: az vm monitor metrics list-definitions -n MyVM -g MyRG --query "@[*].name.value".
            this.Options = [this.Options, '--metrics', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Namespace to query metric definitions for.
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = orderby(this, varargin)
            % Aggregation to use for sorting results and the direction of the sort. Only one order can be specificed. Examples: sum asc.
            this.Options = [this.Options, '--orderby', varargin{:}];
        end

        function this = top(this, varargin)
            % Max number of records to retrieve. Valid only if --filter used. Default: 10. Time Arguments
            this.Options = [this.Options, '--top', varargin{:}];
        end

        function this = end_time(this, varargin)
            % End time of the query. Defaults to the current time. Format: date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).
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
            fprintf('%s\n', '    az vm monitor metrics tail : List the metric values for a VM.')
            fprintf('%s\n', '        Command group ''vm monitor metrics'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name or ID of a virtual machine.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --aggregation                  : The list of aggregation types (space-separated) to retrieve.')
            fprintf('%s\n', '                                     Allowed values: Average, Count, Maximum, Minimum, Total.')
            fprintf('%s\n', '                                     Values from: az vm monitor metrics list-definitions -n MyVM -g')
            fprintf('%s\n', '                                     MyRG --query "@[*].supportedAggregationTypes".')
            fprintf('%s\n', '    --dimension                    : The list of dimensions (space-separated) the metrics are')
            fprintf('%s\n', '                                     queried into.  Values from: az vm monitor metrics list-')
            fprintf('%s\n', '                                     definitions -n MyVM -g MyRG --query "@[*].dimensions".')
            fprintf('%s\n', '    --filter                       : A string used to reduce the set of metric data returned. eg.')
            fprintf('%s\n', '                                     "LUN eq ''*''".')
            fprintf('%s\n', '        For a full list of filters, see the filter string reference at')
            fprintf('%s\n', '        https://docs.microsoft.com/rest/api/monitor/metrics/list.')
            fprintf('%s\n', '    --metadata                     : Return the metadata values instead of metric data.')
            fprintf('%s\n', '    --metrics                      : Space-separated list of metric names to retrieve.  Values from:')
            fprintf('%s\n', '                                     az vm monitor metrics list-definitions -n MyVM -g MyRG --query')
            fprintf('%s\n', '                                     "@[*].name.value".')
            fprintf('%s\n', '    --namespace                    : Namespace to query metric definitions for.')
            fprintf('%s\n', '    --orderby                      : Aggregation to use for sorting results and the direction of the')
            fprintf('%s\n', '                                     sort. Only one order can be specificed. Examples: sum asc.')
            fprintf('%s\n', '    --top                          : Max number of records to retrieve. Valid only if --filter used.')
            fprintf('%s\n', '                                     Default: 10.')
            fprintf('%s\n', 'Time Arguments')
            fprintf('%s\n', '    --end-time                     : End time of the query. Defaults to the current time. Format:')
            fprintf('%s\n', '                                     date (yyyy-mm-dd) time (hh:mm:ss.xxxxx) timezone (+/-hh:mm).')
            fprintf('%s\n', '    --interval                     : The interval over which to aggregate metrics, in ##h##m format.')
            fprintf('%s\n', '                                     Default: 1m.')
            fprintf('%s\n', '    --offset                       : Time offset of the query range, in ##d##h format.  Default: 1h.')
            fprintf('%s\n', '        Can be used with either --start-time or --end-time. If used with --start-time, then the end')
            fprintf('%s\n', '        time will be calculated by adding the offset. If used with --end-time (default), then the')
            fprintf('%s\n', '        start time will be calculated by subtracting the offset. If --start-time and --end-time are')
            fprintf('%s\n', '        provided, then --offset will be ignored.')
            fprintf('%s\n', '    --start-time                   : Start time of the query. Format: date (yyyy-mm-dd) time')
            fprintf('%s\n', '                                     (hh:mm:ss.xxxxx) timezone (+/-hh:mm).')
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
            fprintf('%s\n', '    List CPU usage of VM for past one hour')
            fprintf('%s\n', '        az vm monitor metrics tail --name myVM -g myRG --metric "Percentage CPU"')
            fprintf('%s\n', '    List one hour CPU usage of VM started at 2019-12-18T00:00:00Z')
            fprintf('%s\n', '        az vm monitor metrics tail --name myVM -g myRG --metric "Percentage CPU" --start-time')
            fprintf('%s\n', '        2019-12-18T00:00:00Z')
            fprintf('%s\n', '    List CPU usage of VM for past one hour with filter')
            fprintf('%s\n', '        az vm monitor metrics tail --name myVM -g myRG --metrics "Per Disk Read Bytes/sec" --filter')
            fprintf('%s\n', '        "SlotId eq ''*''"')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm monitor metrics tail"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class tail 
