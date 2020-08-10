classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams live-output create : Create a live output.
            this.BaseCmd = 'az ams live-output create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = archive_window_length(this, varargin)
            % ISO 8601 timespan duration of the archive window length. This is the duration that customer want to retain the recorded content. Minimum window is 5 minutes (PT5M or 00:05:00). Maximum window is 25 hours (PT25H or 25:00:00). For example, to retain the output for 10 minutes, use PT10M or 00:10:00.
            this.Options = [this.Options, '--archive-window-length', varargin{:}];
        end

        function this = asset_name(this, varargin)
            % The name of the asset.
            this.Options = [this.Options, '--asset-name', varargin{:}];
        end

        function this = live_event_name(this, varargin)
            % The name of the live event.
            this.Options = [this.Options, '--live-event-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the live output.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = description(this, varargin)
            % The live output description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = fragments_per_ts_segment(this, varargin)
            % The number of fragments per HLS segment.
            this.Options = [this.Options, '--fragments-per-ts-segment', varargin{:}];
        end

        function this = manifest_name(this, varargin)
            % The manifest file name. If not provided, the service will generate one automatically.
            this.Options = [this.Options, '--manifest-name', varargin{:}];
        end

        function this = output_snap_time(this, varargin)
            % The output snapshot time.
            this.Options = [this.Options, '--output-snap-time', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams live-output create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams live-output create : Create a live output.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a       [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --archive-window-length [Required] : ISO 8601 timespan duration of the archive window length.')
            fprintf('%s\n', '                                         This is the duration that customer want to retain the')
            fprintf('%s\n', '                                         recorded content. Minimum window is 5 minutes (PT5M or')
            fprintf('%s\n', '                                         00:05:00). Maximum window is 25 hours (PT25H or 25:00:00).')
            fprintf('%s\n', '                                         For example, to retain the output for 10 minutes, use PT10M')
            fprintf('%s\n', '                                         or 00:10:00.')
            fprintf('%s\n', '    --asset-name            [Required] : The name of the asset.')
            fprintf('%s\n', '    --live-event-name       [Required] : The name of the live event.')
            fprintf('%s\n', '    --name -n               [Required] : The name of the live output.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --description                      : The live output description.')
            fprintf('%s\n', '    --fragments-per-ts-segment         : The number of fragments per HLS segment.')
            fprintf('%s\n', '    --manifest-name                    : The manifest file name. If not provided, the service will')
            fprintf('%s\n', '                                         generate one automatically.')
            fprintf('%s\n', '    --output-snap-time                 : The output snapshot time.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams live-output create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
