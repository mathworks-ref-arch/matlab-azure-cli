classdef start < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start()
            % az ams job start : Start a job.
            this.BaseCmd = 'az ams job start ';
        end
        function this = output_assets(this, varargin)
            % Space-separated assets in 'assetName=label' format. An asset without label can be sent like this: 'assetName='.
            this.Options = [this.Options, '--output-assets', varargin{:}];
        end

        function this = correlation_data(this, varargin)
            % Space-separated correlation data in 'key[=value]' format. This customer provided data will be returned in Job and JobOutput state events.
            this.Options = [this.Options, '--correlation-data', varargin{:}];
        end

        function this = description(this, varargin)
            % The job description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = files(this, varargin)
            % Space-separated list of files. It can be used to tell the service to only use the files specified from the input asset.
            this.Options = [this.Options, '--files', varargin{:}];
        end

        function this = label(this, varargin)
            % A label that is assigned to a Job Input that is used to satisfy a reference used in the Transform. For example, a Transform can be authored to take an image file with the label 'xyz' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label 'xyz'.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = priority(this, varargin)
            % The priority with which the job should be processed.  Allowed values: High, Low, Normal. Asset Job Input Arguments
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = input_asset_name(this, varargin)
            % The name of the input asset. Http Job Input Arguments
            this.Options = [this.Options, '--input-asset-name', varargin{:}];
        end

        function this = base_uri(this, varargin)
            % Base uri for http job input. It will be concatenated with provided file names. If no base uri is given, then the provided file list is assumed to be fully qualified uris.
            this.Options = [this.Options, '--base-uri', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams job start"
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
            % The name of the job.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = transform_name(this, varargin)
            % The name of the transform.
            this.Options = [this.Options, '--transform-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams job start : Start a job.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --output-assets [Required] : Space-separated assets in ''assetName=label'' format. An asset')
            fprintf('%s\n', '                                 without label can be sent like this: ''assetName=''.')
            fprintf('%s\n', '    --correlation-data         : Space-separated correlation data in ''key[=value]'' format. This')
            fprintf('%s\n', '                                 customer provided data will be returned in Job and JobOutput state')
            fprintf('%s\n', '                                 events.')
            fprintf('%s\n', '    --description              : The job description.')
            fprintf('%s\n', '    --files                    : Space-separated list of files. It can be used to tell the service')
            fprintf('%s\n', '                                 to only use the files specified from the input asset.')
            fprintf('%s\n', '    --label                    : A label that is assigned to a Job Input that is used to satisfy a')
            fprintf('%s\n', '                                 reference used in the Transform. For example, a Transform can be')
            fprintf('%s\n', '                                 authored to take an image file with the label ''xyz'' and apply it as')
            fprintf('%s\n', '                                 an overlay onto the input video before it is encoded. When')
            fprintf('%s\n', '                                 submitting a Job, exactly one of the JobInputs should be the image')
            fprintf('%s\n', '                                 file, and it should have the label ''xyz''.')
            fprintf('%s\n', '    --priority                 : The priority with which the job should be processed.  Allowed')
            fprintf('%s\n', '                                 values: High, Low, Normal.')
            fprintf('%s\n', 'Asset Job Input Arguments')
            fprintf('%s\n', '    --input-asset-name         : The name of the input asset.')
            fprintf('%s\n', 'Http Job Input Arguments')
            fprintf('%s\n', '    --base-uri                 : Base uri for http job input. It will be concatenated with provided')
            fprintf('%s\n', '                                 file names. If no base uri is given, then the provided file list is')
            fprintf('%s\n', '                                 assumed to be fully qualified uris.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a          : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                  : The name of the job.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --transform-name -t        : The name of the transform.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams job start"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start 
