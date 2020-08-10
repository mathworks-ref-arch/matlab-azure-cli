classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams transform create : Create a transform.
            this.BaseCmd = 'az ams transform create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the transform.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = preset(this, varargin)
            % Preset that describes the operations that will be used to modify, transcode, or extract insights from the source file to generate the transform output. Allowed values: H264SingleBitrateSD, H264SingleBitrate720p, H264SingleBitrate1080p, AdaptiveStreaming, AACGoodQualityAudio, ContentAwareEncodingExperimental, ContentAwareEncoding, H264MultipleBitrate1080p, H264MultipleBitrate720p, H264MultipleBitrateSD, AudioAnalyzer, VideoAnalyzer, FaceDetector. In addition to the allowed values, you can also pass a path to a custom Standard Encoder preset JSON file. See https://docs.microsoft.com/rest/api/media/transforms/createorup date#standardencoderpreset for further details on the settings to use to build a custom preset.
            this.Options = [this.Options, '--preset', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = description(this, varargin)
            % The description of the transform.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = on_error(this, varargin)
            % A Transform can define more than one output. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with 'ContinueJob'. The default is 'StopProcessingJob'.  Allowed values: ContinueJob, StopProcessingJob.
            this.Options = [this.Options, '--on-error', varargin{:}];
        end

        function this = relative_priority(this, varargin)
            % Sets the relative priority of the transform outputs within a transform. This sets the priority that the service uses for processing TransformOutputs. The default priority is Normal. Allowed values: High, Low, Normal. Audio/Video Analyzer Arguments
            this.Options = [this.Options, '--relative-priority', varargin{:}];
        end

        function this = audio_language(this, varargin)
            % The language for the audio payload in the input using the BCP-47 format of "language tag-region" (e.g: en-US). If not specified, automatic language detection would be employed. This feature currently supports English, Chinese, French, German, Italian, Japanese, Spanish, Russian, and Portuguese. The automatic detection works best with audio recordings with clearly discernable speech. If automatic detection fails to find the language, transcription would fallback to English. Allowed values: en-US, en-GB, es-ES, es-MX, fr-FR, it-IT, ja- JP, pt-BR, zh-CN, de-DE, ar-EG, ru-RU, hi-IN. Face Detector Arguments
            this.Options = [this.Options, '--audio-language', varargin{:}];
        end

        function this = resolution(this, varargin)
            % Specifies the maximum resolution at which your video is analyzed. The default behavior is "SourceResolution," which will keep the input video at its original resolution when analyzed. Using StandardDefinition will resize input videos to standard definition while preserving the appropriate aspect ratio. It will only resize if the video is of higher resolution. For example, a 1920x1080 input would be scaled to 640x360 before processing. Switching to "StandardDefinition" will reduce the time it takes to process high resolution video. It may also reduce the cost of using this component (see https://azure.microsoft.com/en-us/pricing/details/media- services/#analytics for details). However, faces that end up being too small in the resized video may not be detected. Allowed values: StandardDefinition, SourceResolution. Video Analyzer Arguments
            this.Options = [this.Options, '--resolution', varargin{:}];
        end

        function this = insights_to_extract(this, varargin)
            % The type of insights to be extracted. If not set then the type will be selected based on the content type. If the content is audio only then only audio insights will be extracted and if it is video only video insights will be extracted.  Allowed values: AllInsights, AudioInsightsOnly, VideoInsightsOnly.
            this.Options = [this.Options, '--insights-to-extract', varargin{:}];
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
            fprintf('%s\n', '    az ams transform create : Create a transform.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the transform.')
            fprintf('%s\n', '    --preset            [Required] : Preset that describes the operations that will be used to')
            fprintf('%s\n', '                                     modify, transcode, or extract insights from the source file to')
            fprintf('%s\n', '                                     generate the transform output. Allowed values:')
            fprintf('%s\n', '                                     H264SingleBitrateSD, H264SingleBitrate720p,')
            fprintf('%s\n', '                                     H264SingleBitrate1080p, AdaptiveStreaming, AACGoodQualityAudio,')
            fprintf('%s\n', '                                     ContentAwareEncodingExperimental, ContentAwareEncoding,')
            fprintf('%s\n', '                                     H264MultipleBitrate1080p, H264MultipleBitrate720p,')
            fprintf('%s\n', '                                     H264MultipleBitrateSD, AudioAnalyzer, VideoAnalyzer,')
            fprintf('%s\n', '                                     FaceDetector. In addition to the allowed values, you can also')
            fprintf('%s\n', '                                     pass a path to a custom Standard Encoder preset JSON file. See ')
            fprintf('%s\n', '                                     https://docs.microsoft.com/rest/api/media/transforms/createorup')
            fprintf('%s\n', '                                     date#standardencoderpreset for further details on the settings')
            fprintf('%s\n', '                                     to use to build a custom preset.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --description                  : The description of the transform.')
            fprintf('%s\n', '    --on-error                     : A Transform can define more than one output. This property')
            fprintf('%s\n', '                                     defines what the service should do when one output fails -')
            fprintf('%s\n', '                                     either continue to produce other outputs, or, stop the other')
            fprintf('%s\n', '                                     outputs. The overall Job state will not reflect failures of')
            fprintf('%s\n', '                                     outputs that are specified with ''ContinueJob''. The default is')
            fprintf('%s\n', '                                     ''StopProcessingJob''.  Allowed values: ContinueJob,')
            fprintf('%s\n', '                                     StopProcessingJob.')
            fprintf('%s\n', '    --relative-priority            : Sets the relative priority of the transform outputs within a')
            fprintf('%s\n', '                                     transform. This sets the priority that the service uses for')
            fprintf('%s\n', '                                     processing TransformOutputs. The default priority is Normal.')
            fprintf('%s\n', '                                     Allowed values: High, Low, Normal.')
            fprintf('%s\n', 'Audio/Video Analyzer Arguments')
            fprintf('%s\n', '    --audio-language               : The language for the audio payload in the input using the')
            fprintf('%s\n', '                                     BCP-47 format of "language tag-region" (e.g: en-US). If not')
            fprintf('%s\n', '                                     specified, automatic language detection would be employed. This')
            fprintf('%s\n', '                                     feature currently supports English, Chinese, French, German,')
            fprintf('%s\n', '                                     Italian, Japanese, Spanish, Russian, and Portuguese. The')
            fprintf('%s\n', '                                     automatic detection works best with audio recordings with')
            fprintf('%s\n', '                                     clearly discernable speech. If automatic detection fails to')
            fprintf('%s\n', '                                     find the language, transcription would fallback to English.')
            fprintf('%s\n', '                                     Allowed values: en-US, en-GB, es-ES, es-MX, fr-FR, it-IT, ja-')
            fprintf('%s\n', '                                     JP, pt-BR, zh-CN, de-DE, ar-EG, ru-RU, hi-IN.')
            fprintf('%s\n', 'Face Detector Arguments')
            fprintf('%s\n', '    --resolution                   : Specifies the maximum resolution at which your video is')
            fprintf('%s\n', '                                     analyzed. The default behavior is "SourceResolution," which')
            fprintf('%s\n', '                                     will keep the input video at its original resolution when')
            fprintf('%s\n', '                                     analyzed. Using StandardDefinition will resize input videos to')
            fprintf('%s\n', '                                     standard definition while preserving the appropriate aspect')
            fprintf('%s\n', '                                     ratio. It will only resize if the video is of higher')
            fprintf('%s\n', '                                     resolution. For example, a 1920x1080 input would be scaled to')
            fprintf('%s\n', '                                     640x360 before processing. Switching to "StandardDefinition"')
            fprintf('%s\n', '                                     will reduce the time it takes to process high resolution video.')
            fprintf('%s\n', '                                     It may also reduce the cost of using this component (see')
            fprintf('%s\n', '                                     https://azure.microsoft.com/en-us/pricing/details/media-')
            fprintf('%s\n', '                                     services/#analytics for details). However, faces that end up')
            fprintf('%s\n', '                                     being too small in the resized video may not be detected.')
            fprintf('%s\n', '                                     Allowed values: StandardDefinition, SourceResolution.')
            fprintf('%s\n', 'Video Analyzer Arguments')
            fprintf('%s\n', '    --insights-to-extract          : The type of insights to be extracted. If not set then the type')
            fprintf('%s\n', '                                     will be selected based on the content type. If the content is')
            fprintf('%s\n', '                                     audio only then only audio insights will be extracted and if it')
            fprintf('%s\n', '                                     is video only video insights will be extracted.  Allowed')
            fprintf('%s\n', '                                     values: AllInsights, AudioInsightsOnly, VideoInsightsOnly.')
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
            fprintf('%s\n', '    Create a transform with AdaptiveStreaming built-in preset and High relative priority.')
            fprintf('%s\n', '        az ams transform create -a myAmsAccount -n transformName -g myResourceGroup --preset')
            fprintf('%s\n', '        AdaptiveStreaming --relative-priority High')
            fprintf('%s\n', '    Create a transform with a custom Standard Encoder preset from a JSON file and Low relative')
            fprintf('%s\n', '    priority.')
            fprintf('%s\n', '        az ams transform create -a myAmsAccount -n transformName -g myResourceGroup --preset')
            fprintf('%s\n', '        "C:\MyPresets\CustomPreset.json" --relative-priority Low')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams transform create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
