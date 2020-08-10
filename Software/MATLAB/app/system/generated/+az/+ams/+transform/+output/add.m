classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az ams transform output add : Add an output to an existing transform.
            this.BaseCmd = 'az ams transform output add ';
        end
        function this = preset(this, varargin)
            % Preset that describes the operations that will be used to modify, transcode, or extract insights from the source file to generate the transform output. Allowed values: H264SingleBitrateSD, H264SingleBitrate720p, H264SingleBitrate1080p, AdaptiveStreaming, AACGoodQualityAudio, ContentAwareEncodingExperimental, ContentAwareEncoding, H264MultipleBitrate1080p, H264MultipleBitrate720p, H264MultipleBitrateSD, AudioAnalyzer, VideoAnalyzer, FaceDetector. In addition to the allowed values, you can also pass a path to a custom Standard Encoder preset JSON file. See https://docs.microsoft.com/rest/a pi/media/transforms/createorupdate#standardencoderpreset for further details on the settings to use to build a custom preset.
            this.Options = [this.Options, '--preset', varargin{:}];
        end

        function this = on_error(this, varargin)
            % A Transform can define more than one output. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with 'ContinueJob'. The default is 'StopProcessingJob'.  Allowed values: ContinueJob, StopProcessingJob.
            this.Options = [this.Options, '--on-error', varargin{:}];
        end

        function this = relative_priority(this, varargin)
            % Sets the relative priority of the transform outputs within a transform. This sets the priority that the service uses for processing TransformOutputs. The default priority is Normal.  Allowed values: High, Low, Normal. Audio/Video Analyzer Arguments
            this.Options = [this.Options, '--relative-priority', varargin{:}];
        end

        function this = audio_language(this, varargin)
            % The language for the audio payload in the input using the BCP-47 format of "language tag-region" (e.g: en-US). If not specified, automatic language detection would be employed. This feature currently supports English, Chinese, French, German, Italian, Japanese, Spanish, Russian, and Portuguese. The automatic detection works best with audio recordings with clearly discernable speech. If automatic detection fails to find the language, transcription would fallback to English. Allowed values: en-US, en-GB, es-ES, es-MX, fr-FR, it-IT, ja-JP, pt-BR, zh-CN, de-DE, ar-EG, ru-RU, hi-IN. Face Detector Arguments
            this.Options = [this.Options, '--audio-language', varargin{:}];
        end

        function this = resolution(this, varargin)
            % Specifies the maximum resolution at which your video is analyzed. The default behavior is "SourceResolution," which will keep the input video at its original resolution when analyzed. Using StandardDefinition will resize input videos to standard definition while preserving the appropriate aspect ratio. It will only resize if the video is of higher resolution. For example, a 1920x1080 input would be scaled to 640x360 before processing. Switching to "StandardDefinition" will reduce the time it takes to process high resolution video. It may also reduce the cost of using this component (see https://azure.microsoft.com/en- us/pricing/details/media-services/#analytics for details). However, faces that end up being too small in the resized video may not be detected. Allowed values: StandardDefinition, SourceResolution.
            this.Options = [this.Options, '--resolution', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the transform.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Video Analyzer Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = insights_to_extract(this, varargin)
            % The type of insights to be extracted. If not set then the type will be selected based on the content type. If the content is audio only then only audio insights will be extracted and if it is video only video insights will be extracted.  Allowed values: AllInsights, AudioInsightsOnly, VideoInsightsOnly.
            this.Options = [this.Options, '--insights-to-extract', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams transform output add : Add an output to an existing transform.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --preset   [Required] : Preset that describes the operations that will be used to modify,')
            fprintf('%s\n', '                            transcode, or extract insights from the source file to generate the')
            fprintf('%s\n', '                            transform output. Allowed values: H264SingleBitrateSD,')
            fprintf('%s\n', '                            H264SingleBitrate720p, H264SingleBitrate1080p, AdaptiveStreaming,')
            fprintf('%s\n', '                            AACGoodQualityAudio, ContentAwareEncodingExperimental,')
            fprintf('%s\n', '                            ContentAwareEncoding, H264MultipleBitrate1080p, H264MultipleBitrate720p,')
            fprintf('%s\n', '                            H264MultipleBitrateSD, AudioAnalyzer, VideoAnalyzer, FaceDetector. In')
            fprintf('%s\n', '                            addition to the allowed values, you can also pass a path to a custom')
            fprintf('%s\n', '                            Standard Encoder preset JSON file. See https://docs.microsoft.com/rest/a')
            fprintf('%s\n', '                            pi/media/transforms/createorupdate#standardencoderpreset for further')
            fprintf('%s\n', '                            details on the settings to use to build a custom preset.')
            fprintf('%s\n', '    --on-error            : A Transform can define more than one output. This property defines what')
            fprintf('%s\n', '                            the service should do when one output fails - either continue to produce')
            fprintf('%s\n', '                            other outputs, or, stop the other outputs. The overall Job state will')
            fprintf('%s\n', '                            not reflect failures of outputs that are specified with ''ContinueJob''.')
            fprintf('%s\n', '                            The default is ''StopProcessingJob''.  Allowed values: ContinueJob,')
            fprintf('%s\n', '                            StopProcessingJob.')
            fprintf('%s\n', '    --relative-priority   : Sets the relative priority of the transform outputs within a transform.')
            fprintf('%s\n', '                            This sets the priority that the service uses for processing')
            fprintf('%s\n', '                            TransformOutputs. The default priority is Normal.  Allowed values: High,')
            fprintf('%s\n', '                            Low, Normal.')
            fprintf('%s\n', 'Audio/Video Analyzer Arguments')
            fprintf('%s\n', '    --audio-language      : The language for the audio payload in the input using the BCP-47 format')
            fprintf('%s\n', '                            of "language tag-region" (e.g: en-US). If not specified, automatic')
            fprintf('%s\n', '                            language detection would be employed. This feature currently supports')
            fprintf('%s\n', '                            English, Chinese, French, German, Italian, Japanese, Spanish, Russian,')
            fprintf('%s\n', '                            and Portuguese. The automatic detection works best with audio recordings')
            fprintf('%s\n', '                            with clearly discernable speech. If automatic detection fails to find')
            fprintf('%s\n', '                            the language, transcription would fallback to English. Allowed values:')
            fprintf('%s\n', '                            en-US, en-GB, es-ES, es-MX, fr-FR, it-IT, ja-JP, pt-BR, zh-CN, de-DE,')
            fprintf('%s\n', '                            ar-EG, ru-RU, hi-IN.')
            fprintf('%s\n', 'Face Detector Arguments')
            fprintf('%s\n', '    --resolution          : Specifies the maximum resolution at which your video is analyzed. The')
            fprintf('%s\n', '                            default behavior is "SourceResolution," which will keep the input video')
            fprintf('%s\n', '                            at its original resolution when analyzed. Using StandardDefinition will')
            fprintf('%s\n', '                            resize input videos to standard definition while preserving the')
            fprintf('%s\n', '                            appropriate aspect ratio. It will only resize if the video is of higher')
            fprintf('%s\n', '                            resolution. For example, a 1920x1080 input would be scaled to 640x360')
            fprintf('%s\n', '                            before processing. Switching to "StandardDefinition" will reduce the')
            fprintf('%s\n', '                            time it takes to process high resolution video. It may also reduce the')
            fprintf('%s\n', '                            cost of using this component (see https://azure.microsoft.com/en-')
            fprintf('%s\n', '                            us/pricing/details/media-services/#analytics for details). However,')
            fprintf('%s\n', '                            faces that end up being too small in the resized video may not be')
            fprintf('%s\n', '                            detected. Allowed values: StandardDefinition, SourceResolution.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a     : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids                 : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                            resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                            should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n             : The name of the transform.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Video Analyzer Arguments')
            fprintf('%s\n', '    --insights-to-extract : The type of insights to be extracted. If not set then the type will be')
            fprintf('%s\n', '                            selected based on the content type. If the content is audio only then')
            fprintf('%s\n', '                            only audio insights will be extracted and if it is video only video')
            fprintf('%s\n', '                            insights will be extracted.  Allowed values: AllInsights,')
            fprintf('%s\n', '                            AudioInsightsOnly, VideoInsightsOnly.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add an output with a custom Standard Encoder preset from a JSON file.')
            fprintf('%s\n', '        az ams transform output add -a myAmsAccount -n transformName -g myResourceGroup --preset')
            fprintf('%s\n', '        "C:\MyPresets\CustomPreset.json"')
            fprintf('%s\n', '    Add an output with a VideoAnalyzer preset with es-ES as audio language and only with audio')
            fprintf('%s\n', '    insights.')
            fprintf('%s\n', '        az ams transform output add -a myAmsAccount -n transformName -g myResourceGroup --preset')
            fprintf('%s\n', '        VideoAnalyzer --audio-language es-ES --insights-to-extract AudioInsightsOnly')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams transform output add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
