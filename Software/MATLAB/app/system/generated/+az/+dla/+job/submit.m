classdef submit < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = submit()
            % az dla job submit : Submit a job to a Data Lake Analytics account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla job submit ';
        end
        function this = job_name(this, varargin)
            % Name for the submitted job.
            this.Options = [this.Options, '--job-name', varargin{:}];
        end

        function this = script(this, varargin)
            % Script to submit. This may be '@{file}' to load from a file.
            this.Options = [this.Options, '--script', varargin{:}];
        end

        function this = compile_mode(this, varargin)
            % Indicates the type of compilation to be done on this job. Valid values are: 'Semantic' (Only performs semantic checks and necessary sanity checks), 'Full' (full compilation) and 'SingleBox' (Full compilation performed locally).  Allowed values: Full, Semantic, SingleBox.
            this.Options = [this.Options, '--compile-mode', varargin{:}];
        end

        function this = compile_only(this, varargin)
            % Indicates that the submission should only build the job and not execute if set to true.
            this.Options = [this.Options, '--compile-only', varargin{:}];
        end

        function this = degree_of_parallelism(this, varargin)
            % The degree of parallelism for the job.  Default: 1. Higher values equate to more parallelism and will usually yield faster running jobs, at the cost of more AUs.
            this.Options = [this.Options, '--degree-of-parallelism', varargin{:}];
        end

        function this = pipeline_id(this, varargin)
            % Job relationship pipeline GUID.
            this.Options = [this.Options, '--pipeline-id', varargin{:}];
        end

        function this = pipeline_name(this, varargin)
            % Friendly name of the job relationship pipeline.
            this.Options = [this.Options, '--pipeline-name', varargin{:}];
        end

        function this = pipeline_uri(this, varargin)
            % Unique pipeline URI which links to the originating service for this pipeline.
            this.Options = [this.Options, '--pipeline-uri', varargin{:}];
        end

        function this = priority(this, varargin)
            % The priority of the job.  Default: 1000. Lower values increase the priority, with the lowest value being 1. This determines the order jobs are run in.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = recurrence_id(this, varargin)
            % Recurrence GUID, unique per activity/script, regardless of iteration. Links different occurrences of the same job together.
            this.Options = [this.Options, '--recurrence-id', varargin{:}];
        end

        function this = recurrence_name(this, varargin)
            % Friendly recurrence nae for the correlation between jobs.
            this.Options = [this.Options, '--recurrence-name', varargin{:}];
        end

        function this = run_id(this, varargin)
            % GUID of the iteration of this pipeline.
            this.Options = [this.Options, '--run-id', varargin{:}];
        end

        function this = runtime_version(this, varargin)
            % The runtime version to use. This parameter is used for explicitly overwriting the default runtime. It should only be done if you know what you are doing.
            this.Options = [this.Options, '--runtime-version', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla job submit"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dla job submit : Submit a job to a Data Lake Analytics account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --job-name   [Required] : Name for the submitted job.')
            fprintf('%s\n', '    --script     [Required] : Script to submit. This may be ''@{file}'' to load from a file.')
            fprintf('%s\n', '    --compile-mode          : Indicates the type of compilation to be done on this job. Valid values')
            fprintf('%s\n', '                              are: ''Semantic'' (Only performs semantic checks and necessary sanity')
            fprintf('%s\n', '                              checks), ''Full'' (full compilation) and ''SingleBox'' (Full compilation')
            fprintf('%s\n', '                              performed locally).  Allowed values: Full, Semantic, SingleBox.')
            fprintf('%s\n', '    --compile-only          : Indicates that the submission should only build the job and not')
            fprintf('%s\n', '                              execute if set to true.')
            fprintf('%s\n', '    --degree-of-parallelism : The degree of parallelism for the job.  Default: 1.')
            fprintf('%s\n', '        Higher values equate to more parallelism and will usually yield faster running jobs, at the')
            fprintf('%s\n', '        cost of more AUs.')
            fprintf('%s\n', '    --pipeline-id           : Job relationship pipeline GUID.')
            fprintf('%s\n', '    --pipeline-name         : Friendly name of the job relationship pipeline.')
            fprintf('%s\n', '    --pipeline-uri          : Unique pipeline URI which links to the originating service for this')
            fprintf('%s\n', '                              pipeline.')
            fprintf('%s\n', '    --priority              : The priority of the job.  Default: 1000.')
            fprintf('%s\n', '        Lower values increase the priority, with the lowest value being 1. This determines the order')
            fprintf('%s\n', '        jobs are run in.')
            fprintf('%s\n', '    --recurrence-id         : Recurrence GUID, unique per activity/script, regardless of iteration.')
            fprintf('%s\n', '                              Links different occurrences of the same job together.')
            fprintf('%s\n', '    --recurrence-name       : Friendly recurrence nae for the correlation between jobs.')
            fprintf('%s\n', '    --run-id                : GUID of the iteration of this pipeline.')
            fprintf('%s\n', '    --runtime-version       : The runtime version to use.')
            fprintf('%s\n', '        This parameter is used for explicitly overwriting the default runtime. It should only be')
            fprintf('%s\n', '        done if you know what you are doing.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n            : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla job submit"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class submit 
