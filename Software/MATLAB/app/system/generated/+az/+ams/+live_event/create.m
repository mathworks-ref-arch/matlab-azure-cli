classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams live-event create : Create a live event.
            this.BaseCmd = 'az ams live-event create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the live event.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = auto_start(this, varargin)
            % The flag indicates if the resource should be automatically started on creation.
            this.Options = [this.Options, '--auto-start', varargin{:}];
        end

        function this = description(this, varargin)
            % The live event description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = stream_options(this, varargin)
            % The options to use for the LiveEvent. This value is specified at creation time and cannot be updated.  Allowed values: Default, LowLatency.
            this.Options = [this.Options, '--stream-options', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vanity_url(this, varargin)
            % Specifies whether to use a vanity url with the Live Event. This value is specified at creation time and cannot be updated.  Allowed values: false, true. Cross Site Access Policies Arguments
            this.Options = [this.Options, '--vanity-url', varargin{:}];
        end

        function this = client_access_policy(this, varargin)
            % Filepath to the clientaccesspolicy.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file.
            this.Options = [this.Options, '--client-access-policy', varargin{:}];
        end

        function this = cross_domain_policy(this, varargin)
            % Filepath to the crossdomain.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file. Encoding Arguments
            this.Options = [this.Options, '--cross-domain-policy', varargin{:}];
        end

        function this = encoding_type(this, varargin)
            % The encoding type for live event. This value is specified at creation time and cannot be updated. Allowed values: Basic, None, Standard.
            this.Options = [this.Options, '--encoding-type', varargin{:}];
        end

        function this = preset_name(this, varargin)
            % The encoding preset name. This value is specified at creation time and cannot be updated. Input Arguments
            this.Options = [this.Options, '--preset-name', varargin{:}];
        end

        function this = ips(this, varargin)
            % Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments.
            this.Options = [this.Options, '--ips', varargin{:}];
        end

        function this = streaming_protocol(this, varargin)
            % The streaming protocol for the live event. This value is specified at creation time and cannot be updated.  Allowed values: FragmentedMP4, RTMP.
            this.Options = [this.Options, '--streaming-protocol', varargin{:}];
        end

        function this = access_token(this, varargin)
            % A unique identifier for a stream. This can be specified at creation time but cannot be updated. If omitted, the service will generate a unique value.
            this.Options = [this.Options, '--access-token', varargin{:}];
        end

        function this = key_frame_interval_duration(this, varargin)
            % ISO 8601 timespan duration of the key frame interval duration in seconds. The value should be an interger in the range of 1 (PT1S or 00:00:01) to 30 (PT30S or 00:00:30) seconds. Preview Arguments
            this.Options = [this.Options, '--key-frame-interval-duration', varargin{:}];
        end

        function this = alternative_media_id(this, varargin)
            % An Alternative Media Identifier associated with the StreamingLocator created for the preview. This value is specified at creation time and cannot be updated. The identifier can be used in the CustomLicenseAcquisitionUrlTemplate or the CustomKeyAcquisitionUrlTemplate of the StreamingPolicy specified in the StreamingPolicyName field.
            this.Options = [this.Options, '--alternative-media-id', varargin{:}];
        end

        function this = preview_ips(this, varargin)
            % Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments.
            this.Options = [this.Options, '--preview-ips', varargin{:}];
        end

        function this = preview_locator(this, varargin)
            % The identifier of the preview locator in Guid format. Specifying this at creation time allows the caller to know the preview locator url before the event is created. If omitted, the service will generate a random identifier. This value cannot be updated once the live event is created.
            this.Options = [this.Options, '--preview-locator', varargin{:}];
        end

        function this = streaming_policy_name(this, varargin)
            % The name of streaming policy used for the live event preview. This can be specified at creation time but cannot be updated.
            this.Options = [this.Options, '--streaming-policy-name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams live-event create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams live-event create : Create a live event.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a    [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --name -n            [Required] : The name of the live event.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --auto-start                    : The flag indicates if the resource should be automatically')
            fprintf('%s\n', '                                      started on creation.')
            fprintf('%s\n', '    --description                   : The live event description.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --stream-options                : The options to use for the LiveEvent. This value is specified')
            fprintf('%s\n', '                                      at creation time and cannot be updated.  Allowed values:')
            fprintf('%s\n', '                                      Default, LowLatency.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', '    --vanity-url                    : Specifies whether to use a vanity url with the Live Event.')
            fprintf('%s\n', '                                      This value is specified at creation time and cannot be')
            fprintf('%s\n', '                                      updated.  Allowed values: false, true.')
            fprintf('%s\n', 'Cross Site Access Policies Arguments')
            fprintf('%s\n', '    --client-access-policy          : Filepath to the clientaccesspolicy.xml used by Microsoft')
            fprintf('%s\n', '                                      Silverlight and Adobe Flash. Use @{file} to load from a file.')
            fprintf('%s\n', '    --cross-domain-policy           : Filepath to the crossdomain.xml used by Microsoft Silverlight')
            fprintf('%s\n', '                                      and Adobe Flash. Use @{file} to load from a file.')
            fprintf('%s\n', 'Encoding Arguments')
            fprintf('%s\n', '    --encoding-type                 : The encoding type for live event. This value is specified at')
            fprintf('%s\n', '                                      creation time and cannot be updated. Allowed values: Basic,')
            fprintf('%s\n', '                                      None, Standard.')
            fprintf('%s\n', '    --preset-name                   : The encoding preset name. This value is specified at creation')
            fprintf('%s\n', '                                      time and cannot be updated.')
            fprintf('%s\n', 'Input Arguments')
            fprintf('%s\n', '    --ips                [Required] : Space-separated IP addresses for access control. Allowed IP')
            fprintf('%s\n', '                                      addresses can be specified as either a single IP address (e.g.')
            fprintf('%s\n', '                                      "10.0.0.1") or as an IP range using an IP address and a CIDR')
            fprintf('%s\n', '                                      subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing')
            fprintf('%s\n', '                                      list. Use "AllowAll" to allow all IP addresses. Allowing all')
            fprintf('%s\n', '                                      IPs is not recommended for production environments.')
            fprintf('%s\n', '    --streaming-protocol [Required] : The streaming protocol for the live event. This value is')
            fprintf('%s\n', '                                      specified at creation time and cannot be updated.  Allowed')
            fprintf('%s\n', '                                      values: FragmentedMP4, RTMP.')
            fprintf('%s\n', '    --access-token                  : A unique identifier for a stream. This can be specified at')
            fprintf('%s\n', '                                      creation time but cannot be updated. If omitted, the service')
            fprintf('%s\n', '                                      will generate a unique value.')
            fprintf('%s\n', '    --key-frame-interval-duration   : ISO 8601 timespan duration of the key frame interval duration')
            fprintf('%s\n', '                                      in seconds. The value should be an interger in the range of 1')
            fprintf('%s\n', '                                      (PT1S or 00:00:01) to 30 (PT30S or 00:00:30) seconds.')
            fprintf('%s\n', 'Preview Arguments')
            fprintf('%s\n', '    --alternative-media-id          : An Alternative Media Identifier associated with the')
            fprintf('%s\n', '                                      StreamingLocator created for the preview. This value is')
            fprintf('%s\n', '                                      specified at creation time and cannot be updated. The')
            fprintf('%s\n', '                                      identifier can be used in the')
            fprintf('%s\n', '                                      CustomLicenseAcquisitionUrlTemplate or the')
            fprintf('%s\n', '                                      CustomKeyAcquisitionUrlTemplate of the StreamingPolicy')
            fprintf('%s\n', '                                      specified in the StreamingPolicyName field.')
            fprintf('%s\n', '    --preview-ips                   : Space-separated IP addresses for access control. Allowed IP')
            fprintf('%s\n', '                                      addresses can be specified as either a single IP address (e.g.')
            fprintf('%s\n', '                                      "10.0.0.1") or as an IP range using an IP address and a CIDR')
            fprintf('%s\n', '                                      subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing')
            fprintf('%s\n', '                                      list. Use "AllowAll" to allow all IP addresses. Allowing all')
            fprintf('%s\n', '                                      IPs is not recommended for production environments.')
            fprintf('%s\n', '    --preview-locator               : The identifier of the preview locator in Guid format.')
            fprintf('%s\n', '                                      Specifying this at creation time allows the caller to know the')
            fprintf('%s\n', '                                      preview locator url before the event is created. If omitted,')
            fprintf('%s\n', '                                      the service will generate a random identifier. This value')
            fprintf('%s\n', '                                      cannot be updated once the live event is created.')
            fprintf('%s\n', '    --streaming-policy-name         : The name of streaming policy used for the live event preview.')
            fprintf('%s\n', '                                      This can be specified at creation time but cannot be updated.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams live-event create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
