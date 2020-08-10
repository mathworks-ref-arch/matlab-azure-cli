classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams streaming-locator create : Create a streaming locator.
            this.BaseCmd = 'az ams streaming-locator create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = asset_name(this, varargin)
            % The name of the asset used by the streaming locator.
            this.Options = [this.Options, '--asset-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the streaming locator.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = streaming_policy_name(this, varargin)
            % The name of the streaming policy used by the streaming locator. You can either create one with `az ams streaming policy create` or use any of the predefined policies: Predefined_DownloadOnly, Predefined_ClearStreamingOnly, Predefined_DownloadAndClearStreaming, Predefined_ClearKey, Predefined_MultiDrmCencStreaming, Predefined_MultiDrmStreaming.
            this.Options = [this.Options, '--streaming-policy-name', varargin{:}];
        end

        function this = alternative_media_id(this, varargin)
            % An alternative media identifier associated with the streaming locator.
            this.Options = [this.Options, '--alternative-media-id', varargin{:}];
        end

        function this = content_key_policy_name(this, varargin)
            % The default content key policy name used by the streaming locator.
            this.Options = [this.Options, '--content-key-policy-name', varargin{:}];
        end

        function this = content_keys(this, varargin)
            % JSON string with the content keys to be used by the streaming locator. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.microsoft.com/rest /api/media/streaminglocators/create#streaminglocatorcontent key.
            this.Options = [this.Options, '--content-keys', varargin{:}];
        end

        function this = end_time(this, varargin)
            % The ISO 8601 DateTime end time (Y-m-d'T'H:M:S'Z') of the streaming locator.
            this.Options = [this.Options, '--end-time', varargin{:}];
        end

        function this = filters(this, varargin)
            % A space-separated list of asset filter names and/or account filter names.
            this.Options = [this.Options, '--filters', varargin{:}];
        end

        function this = start_time(this, varargin)
            % The ISO 8601 DateTime start time (Y-m-d'T'H:M:S'Z') of the streaming locator.
            this.Options = [this.Options, '--start-time', varargin{:}];
        end

        function this = streaming_locator_id(this, varargin)
            % The identifier of the streaming locator.
            this.Options = [this.Options, '--streaming-locator-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams streaming-locator create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams streaming-locator create : Create a streaming locator.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a       [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --asset-name            [Required] : The name of the asset used by the streaming locator.')
            fprintf('%s\n', '    --name -n               [Required] : The name of the streaming locator.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --streaming-policy-name [Required] : The name of the streaming policy used by the streaming')
            fprintf('%s\n', '                                         locator. You can either create one with `az ams streaming')
            fprintf('%s\n', '                                         policy create` or use any of the predefined policies:')
            fprintf('%s\n', '                                         Predefined_DownloadOnly, Predefined_ClearStreamingOnly,')
            fprintf('%s\n', '                                         Predefined_DownloadAndClearStreaming, Predefined_ClearKey,')
            fprintf('%s\n', '                                         Predefined_MultiDrmCencStreaming,')
            fprintf('%s\n', '                                         Predefined_MultiDrmStreaming.')
            fprintf('%s\n', '    --alternative-media-id             : An alternative media identifier associated with the')
            fprintf('%s\n', '                                         streaming locator.')
            fprintf('%s\n', '    --content-key-policy-name          : The default content key policy name used by the streaming')
            fprintf('%s\n', '                                         locator.')
            fprintf('%s\n', '    --content-keys                     : JSON string with the content keys to be used by the')
            fprintf('%s\n', '                                         streaming locator. Use @{file} to load from a file. For')
            fprintf('%s\n', '                                         further information about the JSON structure please refer')
            fprintf('%s\n', '                                         to swagger documentation on https://docs.microsoft.com/rest')
            fprintf('%s\n', '                                         /api/media/streaminglocators/create#streaminglocatorcontent')
            fprintf('%s\n', '                                         key.')
            fprintf('%s\n', '    --end-time                         : The ISO 8601 DateTime end time (Y-m-d''T''H:M:S''Z'') of the')
            fprintf('%s\n', '                                         streaming locator.')
            fprintf('%s\n', '    --filters                          : A space-separated list of asset filter names and/or account')
            fprintf('%s\n', '                                         filter names.')
            fprintf('%s\n', '    --start-time                       : The ISO 8601 DateTime start time (Y-m-d''T''H:M:S''Z'') of the')
            fprintf('%s\n', '                                         streaming locator.')
            fprintf('%s\n', '    --streaming-locator-id             : The identifier of the streaming locator.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az ams streaming-locator create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
