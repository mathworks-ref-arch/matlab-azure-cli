classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams streaming-policy create : Create a streaming policy.
            this.BaseCmd = 'az ams streaming-policy create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the streaming policy.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = default_content_key_policy_name(this, varargin)
            % Default Content Key used by current streaming policy.
            this.Options = [this.Options, '--default-content-key-policy-name', varargin{:}];
        end

        function this = no_encryption_protocols(this, varargin)
            % Space-separated list of enabled protocols for NoEncryption. Allowed values: Download, Dash, HLS, SmoothStreaming. Common Encryption CBCS Arguments
            this.Options = [this.Options, '--no-encryption-protocols', varargin{:}];
        end

        function this = cbcs_clear_tracks(this, varargin)
            % The JSON representing which tracks should not be encrypted. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.micro soft.com/rest/api/media/streamingpolicies/create#tra ckselection.
            this.Options = [this.Options, '--cbcs-clear-tracks', varargin{:}];
        end

        function this = cbcs_default_key_label(this, varargin)
            % Label to specify Default Content Key for an encryption scheme.
            this.Options = [this.Options, '--cbcs-default-key-label', varargin{:}];
        end

        function this = cbcs_default_key_policy_name(this, varargin)
            % Policy used by Default Content Key.
            this.Options = [this.Options, '--cbcs-default-key-policy-name', varargin{:}];
        end

        function this = cbcs_fair_play_allow_persistent_license(this, varargin)
            % Allows the license to be persistent or not.  Allowed values: false, true.
            this.Options = [this.Options, '--cbcs-fair-play-allow-persistent-license', varargin{:}];
        end

        function this = cbcs_fair_play_template(this, varargin)
            % The custom license acquisition URL template for a customer service to deliver keys to end users. Not needed when using Azure Media Services for issuing keys.
            this.Options = [this.Options, '--cbcs-fair-play-template', varargin{:}];
        end

        function this = cbcs_key_to_track_mappings(this, varargin)
            % The JSON representing a list of StreamingPolicyContentKey. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on h ttps://docs.microsoft.com/rest/api/media/streamingpo licies/create#streamingpolicycontentkey.
            this.Options = [this.Options, '--cbcs-key-to-track-mappings', varargin{:}];
        end

        function this = cbcs_protocols(this, varargin)
            % Space-separated list of enabled protocols for Common Encryption CBCS. Allowed values: Download, Dash, HLS, SmoothStreaming. Common Encryption CENC Arguments
            this.Options = [this.Options, '--cbcs-protocols', varargin{:}];
        end

        function this = cenc_clear_tracks(this, varargin)
            % The JSON representing which tracks should not be encrypted. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.micro soft.com/rest/api/media/streamingpolicies/create#tra ckselection.
            this.Options = [this.Options, '--cenc-clear-tracks', varargin{:}];
        end

        function this = cenc_default_key_label(this, varargin)
            % Label to specify Default Content Key for an encryption scheme.
            this.Options = [this.Options, '--cenc-default-key-label', varargin{:}];
        end

        function this = cenc_default_key_policy_name(this, varargin)
            % Policy used by Default Content Key.
            this.Options = [this.Options, '--cenc-default-key-policy-name', varargin{:}];
        end

        function this = cenc_disable_play_ready(this, varargin)
            % If specified, no PlayReady cenc DRM will be configured. If --cenc-disable-play-ready is set, --cenc-disable-widevine cannot also be set.  Allowed values: false, true.
            this.Options = [this.Options, '--cenc-disable-play-ready', varargin{:}];
        end

        function this = cenc_disable_widevine(this, varargin)
            % If specified, no Widevine cenc DRM will be configured. If --cenc-disable-widevine is set, --cenc-disable-play-ready cannot also be set. Allowed values: false, true.
            this.Options = [this.Options, '--cenc-disable-widevine', varargin{:}];
        end

        function this = cenc_key_to_track_mappings(this, varargin)
            % The JSON representing a list of StreamingPolicyContentKey. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on h ttps://docs.microsoft.com/rest/api/media/streamingpo licies/create#streamingpolicycontentkey.
            this.Options = [this.Options, '--cenc-key-to-track-mappings', varargin{:}];
        end

        function this = cenc_play_ready_attributes(this, varargin)
            % Custom attributes for PlayReady.
            this.Options = [this.Options, '--cenc-play-ready-attributes', varargin{:}];
        end

        function this = cenc_play_ready_template(this, varargin)
            % The custom license acquisition URL template for a customer service to deliver keys to end users. Not needed when using Azure Media Services for issuing keys.
            this.Options = [this.Options, '--cenc-play-ready-template', varargin{:}];
        end

        function this = cenc_protocols(this, varargin)
            % Space-separated list of enabled protocols for Common Encryption CENC. Allowed values: Download, Dash, HLS, SmoothStreaming.
            this.Options = [this.Options, '--cenc-protocols', varargin{:}];
        end

        function this = cenc_widevine_template(this, varargin)
            % The custom license acquisition URL template for a customer service to deliver keys to end users. Not needed when using Azure Media Services for issuing keys. Envelope Encryption Arguments
            this.Options = [this.Options, '--cenc-widevine-template', varargin{:}];
        end

        function this = envelope_clear_tracks(this, varargin)
            % The JSON representing which tracks should not be encrypted. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on https://docs.micro soft.com/rest/api/media/streamingpolicies/create#tra ckselection.
            this.Options = [this.Options, '--envelope-clear-tracks', varargin{:}];
        end

        function this = envelope_default_key_label(this, varargin)
            % Label used to specify Content Key when creating a streaming locator.
            this.Options = [this.Options, '--envelope-default-key-label', varargin{:}];
        end

        function this = envelope_default_key_policy_name(this, varargin)
            % Policy used by Default Key.
            this.Options = [this.Options, '--envelope-default-key-policy-name', varargin{:}];
        end

        function this = envelope_key_to_track_mappings(this, varargin)
            % The JSON representing a list of StreamingPolicyContentKey. Use @{file} to load from a file. For further information about the JSON structure please refer to swagger documentation on h ttps://docs.microsoft.com/rest/api/media/streamingpo licies/create#streamingpolicycontentkey.
            this.Options = [this.Options, '--envelope-key-to-track-mappings', varargin{:}];
        end

        function this = envelope_protocols(this, varargin)
            % Space-separated list of enabled protocols for Envelope Encryption. Allowed values: Download, Dash, HLS, SmoothStreaming.
            this.Options = [this.Options, '--envelope-protocols', varargin{:}];
        end

        function this = envelope_template(this, varargin)
            % The KeyAcquistionUrlTemplate is used to point to user specified service to delivery content keys.
            this.Options = [this.Options, '--envelope-template', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams streaming-policy create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams streaming-policy create : Create a streaming policy.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a              [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --name -n                      [Required] : The name of the streaming policy.')
            fprintf('%s\n', '    --resource-group -g            [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', '    --default-content-key-policy-name         : Default Content Key used by current streaming')
            fprintf('%s\n', '                                                policy.')
            fprintf('%s\n', '    --no-encryption-protocols                 : Space-separated list of enabled protocols for')
            fprintf('%s\n', '                                                NoEncryption. Allowed values: Download, Dash, HLS,')
            fprintf('%s\n', '                                                SmoothStreaming.')
            fprintf('%s\n', 'Common Encryption CBCS Arguments')
            fprintf('%s\n', '    --cbcs-clear-tracks                       : The JSON representing which tracks should not be')
            fprintf('%s\n', '                                                encrypted. Use @{file} to load from a file. For')
            fprintf('%s\n', '                                                further information about the JSON structure please')
            fprintf('%s\n', '                                                refer to swagger documentation on https://docs.micro')
            fprintf('%s\n', '                                                soft.com/rest/api/media/streamingpolicies/create#tra')
            fprintf('%s\n', '                                                ckselection.')
            fprintf('%s\n', '    --cbcs-default-key-label                  : Label to specify Default Content Key for an')
            fprintf('%s\n', '                                                encryption scheme.')
            fprintf('%s\n', '    --cbcs-default-key-policy-name            : Policy used by Default Content Key.')
            fprintf('%s\n', '    --cbcs-fair-play-allow-persistent-license : Allows the license to be persistent or not.  Allowed')
            fprintf('%s\n', '                                                values: false, true.')
            fprintf('%s\n', '    --cbcs-fair-play-template                 : The custom license acquisition URL template for a')
            fprintf('%s\n', '                                                customer service to deliver keys to end users. Not')
            fprintf('%s\n', '                                                needed when using Azure Media Services for issuing')
            fprintf('%s\n', '                                                keys.')
            fprintf('%s\n', '    --cbcs-key-to-track-mappings              : The JSON representing a list of')
            fprintf('%s\n', '                                                StreamingPolicyContentKey. Use @{file} to load from')
            fprintf('%s\n', '                                                a file. For further information about the JSON')
            fprintf('%s\n', '                                                structure please refer to swagger documentation on h')
            fprintf('%s\n', '                                                ttps://docs.microsoft.com/rest/api/media/streamingpo')
            fprintf('%s\n', '                                                licies/create#streamingpolicycontentkey.')
            fprintf('%s\n', '    --cbcs-protocols                          : Space-separated list of enabled protocols for Common')
            fprintf('%s\n', '                                                Encryption CBCS. Allowed values: Download, Dash,')
            fprintf('%s\n', '                                                HLS, SmoothStreaming.')
            fprintf('%s\n', 'Common Encryption CENC Arguments')
            fprintf('%s\n', '    --cenc-clear-tracks                       : The JSON representing which tracks should not be')
            fprintf('%s\n', '                                                encrypted. Use @{file} to load from a file. For')
            fprintf('%s\n', '                                                further information about the JSON structure please')
            fprintf('%s\n', '                                                refer to swagger documentation on https://docs.micro')
            fprintf('%s\n', '                                                soft.com/rest/api/media/streamingpolicies/create#tra')
            fprintf('%s\n', '                                                ckselection.')
            fprintf('%s\n', '    --cenc-default-key-label                  : Label to specify Default Content Key for an')
            fprintf('%s\n', '                                                encryption scheme.')
            fprintf('%s\n', '    --cenc-default-key-policy-name            : Policy used by Default Content Key.')
            fprintf('%s\n', '    --cenc-disable-play-ready                 : If specified, no PlayReady cenc DRM will be')
            fprintf('%s\n', '                                                configured. If --cenc-disable-play-ready is set,')
            fprintf('%s\n', '                                                --cenc-disable-widevine cannot also be set.  Allowed')
            fprintf('%s\n', '                                                values: false, true.')
            fprintf('%s\n', '    --cenc-disable-widevine                   : If specified, no Widevine cenc DRM will be')
            fprintf('%s\n', '                                                configured. If --cenc-disable-widevine is set,')
            fprintf('%s\n', '                                                --cenc-disable-play-ready cannot also be set.')
            fprintf('%s\n', '                                                Allowed values: false, true.')
            fprintf('%s\n', '    --cenc-key-to-track-mappings              : The JSON representing a list of')
            fprintf('%s\n', '                                                StreamingPolicyContentKey. Use @{file} to load from')
            fprintf('%s\n', '                                                a file. For further information about the JSON')
            fprintf('%s\n', '                                                structure please refer to swagger documentation on h')
            fprintf('%s\n', '                                                ttps://docs.microsoft.com/rest/api/media/streamingpo')
            fprintf('%s\n', '                                                licies/create#streamingpolicycontentkey.')
            fprintf('%s\n', '    --cenc-play-ready-attributes              : Custom attributes for PlayReady.')
            fprintf('%s\n', '    --cenc-play-ready-template                : The custom license acquisition URL template for a')
            fprintf('%s\n', '                                                customer service to deliver keys to end users. Not')
            fprintf('%s\n', '                                                needed when using Azure Media Services for issuing')
            fprintf('%s\n', '                                                keys.')
            fprintf('%s\n', '    --cenc-protocols                          : Space-separated list of enabled protocols for Common')
            fprintf('%s\n', '                                                Encryption CENC. Allowed values: Download, Dash,')
            fprintf('%s\n', '                                                HLS, SmoothStreaming.')
            fprintf('%s\n', '    --cenc-widevine-template                  : The custom license acquisition URL template for a')
            fprintf('%s\n', '                                                customer service to deliver keys to end users. Not')
            fprintf('%s\n', '                                                needed when using Azure Media Services for issuing')
            fprintf('%s\n', '                                                keys.')
            fprintf('%s\n', 'Envelope Encryption Arguments')
            fprintf('%s\n', '    --envelope-clear-tracks                   : The JSON representing which tracks should not be')
            fprintf('%s\n', '                                                encrypted. Use @{file} to load from a file. For')
            fprintf('%s\n', '                                                further information about the JSON structure please')
            fprintf('%s\n', '                                                refer to swagger documentation on https://docs.micro')
            fprintf('%s\n', '                                                soft.com/rest/api/media/streamingpolicies/create#tra')
            fprintf('%s\n', '                                                ckselection.')
            fprintf('%s\n', '    --envelope-default-key-label              : Label used to specify Content Key when creating a')
            fprintf('%s\n', '                                                streaming locator.')
            fprintf('%s\n', '    --envelope-default-key-policy-name        : Policy used by Default Key.')
            fprintf('%s\n', '    --envelope-key-to-track-mappings          : The JSON representing a list of')
            fprintf('%s\n', '                                                StreamingPolicyContentKey. Use @{file} to load from')
            fprintf('%s\n', '                                                a file. For further information about the JSON')
            fprintf('%s\n', '                                                structure please refer to swagger documentation on h')
            fprintf('%s\n', '                                                ttps://docs.microsoft.com/rest/api/media/streamingpo')
            fprintf('%s\n', '                                                licies/create#streamingpolicycontentkey.')
            fprintf('%s\n', '    --envelope-protocols                      : Space-separated list of enabled protocols for')
            fprintf('%s\n', '                                                Envelope Encryption. Allowed values: Download, Dash,')
            fprintf('%s\n', '                                                HLS, SmoothStreaming.')
            fprintf('%s\n', '    --envelope-template                       : The KeyAcquistionUrlTemplate is used to point to')
            fprintf('%s\n', '                                                user specified service to delivery content keys.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams streaming-policy create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
