classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams asset-filter create : Create an asset filter.
            this.BaseCmd = 'az ams asset-filter create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = asset_name(this, varargin)
            % The name of the asset.
            this.Options = [this.Options, '--asset-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the asset filter.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = first_quality(this, varargin)
            % The first quality (lowest) bitrate to include in the manifest.
            this.Options = [this.Options, '--first-quality', varargin{:}];
        end

        function this = tracks(this, varargin)
            % The JSON representing the track selections. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft .com/rest/api/media/assetfilters/createorupdate#filtertracksele ction. Presentation Time Range Arguments
            this.Options = [this.Options, '--tracks', varargin{:}];
        end

        function this = end_timestamp(this, varargin)
            % Applies to Video on Demand (VoD).For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD.This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is the timescale, so an endTimestamp of 1800000000 would be for 3 minutes.Use startTimestamp and endTimestamp to trim the fragments that will be in the playlist (manifest).For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
            this.Options = [this.Options, '--end-timestamp', varargin{:}];
        end

        function this = force_end_timestamp(this, varargin)
            % Applies to Live Streaming only. Indicates whether the endTimestamp property must be present. If true, endTimestamp must be specified or a bad request code is returned. Allowed values: false, true.  Allowed values: false, true.
            this.Options = [this.Options, '--force-end-timestamp', varargin{:}];
        end

        function this = live_backoff_duration(this, varargin)
            % Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit for this property is timescale (see below). The maximum live back off duration is 300 seconds (3000000000). For example, a value of 2000000000 means that the latest available content is 20 seconds delayed from the real live edge.
            this.Options = [this.Options, '--live-backoff-duration', varargin{:}];
        end

        function this = presentation_window_duration(this, varargin)
            % Applies to Live Streaming only.Use presentationWindowDuration to apply a sliding window of fragments to include in a playlist.The unit for this property is timescale (see below).For example, set presentationWindowDuration=1200000000 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds.
            this.Options = [this.Options, '--presentation-window-duration', varargin{:}];
        end

        function this = start_timestamp(this, varargin)
            % Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is the timescale, so a startTimestamp of 150000000 would be for 15 seconds. Use startTimestamp and endTimestampp to trim the fragments that will be in the playlist (manifest). For example, startTimestamp=40000000 and endTimestamp=100000000 using the default timescale will generate a playlist that contains fragments from between 4 seconds and 10 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
            this.Options = [this.Options, '--start-timestamp', varargin{:}];
        end

        function this = timescale(this, varargin)
            % Applies to all timestamps and durations in a Presentation Time Range, specified as the number of increments in one second.Default is 10000000 - ten million increments in one second, where each increment would be 100 nanoseconds long. For example, if you want to set a startTimestamp at 30 seconds, you would use a value of 300000000 when using the default timescale.
            this.Options = [this.Options, '--timescale', varargin{:}];
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
            fprintf('%s\n', '    az ams asset-filter create : Create an asset filter.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --asset-name        [Required] : The name of the asset.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the asset filter.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --first-quality                : The first quality (lowest) bitrate to include in the manifest.')
            fprintf('%s\n', '    --tracks                       : The JSON representing the track selections. Use @{file} to load')
            fprintf('%s\n', '                                     from a file. For further information about the JSON structure')
            fprintf('%s\n', '                                     please refer to swagger documentation on https://docs.microsoft')
            fprintf('%s\n', '                                     .com/rest/api/media/assetfilters/createorupdate#filtertracksele')
            fprintf('%s\n', '                                     ction.')
            fprintf('%s\n', 'Presentation Time Range Arguments')
            fprintf('%s\n', '    --end-timestamp                : Applies to Video on Demand (VoD).For the Live Streaming')
            fprintf('%s\n', '                                     presentation, it is silently ignored and applied when the')
            fprintf('%s\n', '                                     presentation ends and the stream becomes VoD.This is a long')
            fprintf('%s\n', '                                     value that represents an absolute end point of the')
            fprintf('%s\n', '                                     presentation, rounded to the closest next GOP start. The unit')
            fprintf('%s\n', '                                     is the timescale, so an endTimestamp of 1800000000 would be for')
            fprintf('%s\n', '                                     3 minutes.Use startTimestamp and endTimestamp to trim the')
            fprintf('%s\n', '                                     fragments that will be in the playlist (manifest).For example,')
            fprintf('%s\n', '                                     startTimestamp=40000000 and endTimestamp=100000000 using the')
            fprintf('%s\n', '                                     default timescale will generate a playlist that contains')
            fprintf('%s\n', '                                     fragments from between 4 seconds and 10 seconds of the VoD')
            fprintf('%s\n', '                                     presentation. If a fragment straddles the boundary, the entire')
            fprintf('%s\n', '                                     fragment will be included in the manifest.')
            fprintf('%s\n', '    --force-end-timestamp          : Applies to Live Streaming only. Indicates whether the')
            fprintf('%s\n', '                                     endTimestamp property must be present. If true, endTimestamp')
            fprintf('%s\n', '                                     must be specified or a bad request code is returned. Allowed')
            fprintf('%s\n', '                                     values: false, true.  Allowed values: false, true.')
            fprintf('%s\n', '    --live-backoff-duration        : Applies to Live Streaming only. This value defines the latest')
            fprintf('%s\n', '                                     live position that a client can seek to. Using this property,')
            fprintf('%s\n', '                                     you can delay live playback position and create a server-side')
            fprintf('%s\n', '                                     buffer for players. The unit for this property is timescale')
            fprintf('%s\n', '                                     (see below). The maximum live back off duration is 300 seconds')
            fprintf('%s\n', '                                     (3000000000). For example, a value of 2000000000 means that the')
            fprintf('%s\n', '                                     latest available content is 20 seconds delayed from the real')
            fprintf('%s\n', '                                     live edge.')
            fprintf('%s\n', '    --presentation-window-duration : Applies to Live Streaming only.Use presentationWindowDuration')
            fprintf('%s\n', '                                     to apply a sliding window of fragments to include in a')
            fprintf('%s\n', '                                     playlist.The unit for this property is timescale (see')
            fprintf('%s\n', '                                     below).For example, set presentationWindowDuration=1200000000')
            fprintf('%s\n', '                                     to apply a two-minute sliding window. Media within 2 minutes of')
            fprintf('%s\n', '                                     the live edge will be included in the playlist. If a fragment')
            fprintf('%s\n', '                                     straddles the boundary, the entire fragment will be included in')
            fprintf('%s\n', '                                     the playlist. The minimum presentation window duration is 60')
            fprintf('%s\n', '                                     seconds.')
            fprintf('%s\n', '    --start-timestamp              : Applies to Video on Demand (VoD) or Live Streaming. This is a')
            fprintf('%s\n', '                                     long value that represents an absolute start point of the')
            fprintf('%s\n', '                                     stream. The value gets rounded to the closest next GOP start.')
            fprintf('%s\n', '                                     The unit is the timescale, so a startTimestamp of 150000000')
            fprintf('%s\n', '                                     would be for 15 seconds. Use startTimestamp and endTimestampp')
            fprintf('%s\n', '                                     to trim the fragments that will be in the playlist (manifest).')
            fprintf('%s\n', '                                     For example, startTimestamp=40000000 and endTimestamp=100000000')
            fprintf('%s\n', '                                     using the default timescale will generate a playlist that')
            fprintf('%s\n', '                                     contains fragments from between 4 seconds and 10 seconds of the')
            fprintf('%s\n', '                                     VoD presentation. If a fragment straddles the boundary, the')
            fprintf('%s\n', '                                     entire fragment will be included in the manifest.')
            fprintf('%s\n', '    --timescale                    : Applies to all timestamps and durations in a Presentation Time')
            fprintf('%s\n', '                                     Range, specified as the number of increments in one')
            fprintf('%s\n', '                                     second.Default is 10000000 - ten million increments in one')
            fprintf('%s\n', '                                     second, where each increment would be 100 nanoseconds long. For')
            fprintf('%s\n', '                                     example, if you want to set a startTimestamp at 30 seconds, you')
            fprintf('%s\n', '                                     would use a value of 300000000 when using the default')
            fprintf('%s\n', '                                     timescale.')
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
            fprintf('%s\n', '    Create an asset filter with filter track selections.')
            fprintf('%s\n', '        az ams asset-filter create -a amsAccount -g resourceGroup -n filterName --force-end-')
            fprintf('%s\n', '        timestamp=False --end-timestamp 200000 --start-timestamp 100000 --live-backoff-duration 60')
            fprintf('%s\n', '        --presentation-window-duration 600000 --timescale 1000 --first-quality 720 --asset-name')
            fprintf('%s\n', '        assetName --tracks @C:\tracks.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams asset-filter create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
