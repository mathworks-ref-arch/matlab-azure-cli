classdef upload < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload()
            % az batch node service-logs upload : Upload Azure Batch service log files from the specified
            % Compute Node to Azure Blob Storage.
            % This is for gathering Azure Batch service log files in an automated fashion from Compute
            % Nodes if you are experiencing an error and wish to escalate to Azure support. The Azure
            % Batch service log files should be shared with Azure support to aid in debugging issues with
            % the Batch service.
            this.BaseCmd = 'az batch node service-logs upload ';
        end
        function this = node_id(this, varargin)
            % The ID of the Compute Node from which you want to upload the Azure Batch service log files.
            this.Options = [this.Options, '--node-id', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The ID of the Pool that contains the Compute Node.
            this.Options = [this.Options, '--pool-id', varargin{:}];
        end

        function this = json_file(this, varargin)
            % A file containing the upload batch service logs configuration specification in JSON (formatted to match the respective REST API body). If this parameter is specified, all 'Upload Batch Service Logs Configuration Arguments' are ignored.
            this.Options = [this.Options, '--json-file', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch node service-logs upload"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_endpoint(this, varargin)
            % Batch service endpoint. Alternatively, set by environment variable: AZURE_BATCH_ENDPOINT.
            this.Options = [this.Options, '--account-endpoint', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Batch account key. Alternatively, set by environment variable: AZURE_BATCH_ACCESS_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT. Upload Batch Service Logs Configuration Arguments
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = container_url(this, varargin)
            % Required. The URL of the container within Azure Blob Storage to which to upload the Batch Service log file(s). The URL must include a Shared Access Signature (SAS) granting write permissions to the container. The SAS duration must allow enough time for the upload to finish. The start time for SAS is optional and recommended to not be specified.
            this.Options = [this.Options, '--container-url', varargin{:}];
        end

        function this = end_time(this, varargin)
            % The end of the time range from which to upload Batch Service log file(s). Any log file containing a log message in the time range will be uploaded. This means that the operation might retrieve more logs than have been requested since the entire log file is always uploaded, but the operation should not retrieve fewer logs than have been requested. If omitted, the default is to upload all logs available after the startTime. Expected format is an ISO-8601 timestamp.
            this.Options = [this.Options, '--end-time', varargin{:}];
        end

        function this = start_time(this, varargin)
            % Required. The start of the time range from which to upload Batch Service log file(s). Any log file containing a log message in the time range will be uploaded. This means that the operation might retrieve more logs than have been requested since the entire log file is always uploaded, but the operation should not retrieve fewer logs than have been requested. Expected format is an ISO-8601 timestamp.
            this.Options = [this.Options, '--start-time', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch node service-logs upload : Upload Azure Batch service log files from the specified')
            fprintf('%s\n', '    Compute Node to Azure Blob Storage.')
            fprintf('%s\n', '        This is for gathering Azure Batch service log files in an automated fashion from Compute')
            fprintf('%s\n', '        Nodes if you are experiencing an error and wish to escalate to Azure support. The Azure')
            fprintf('%s\n', '        Batch service log files should be shared with Azure support to aid in debugging issues with')
            fprintf('%s\n', '        the Batch service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --node-id [Required] : The ID of the Compute Node from which you want to upload the Azure Batch')
            fprintf('%s\n', '                           service log files.')
            fprintf('%s\n', '    --pool-id [Required] : The ID of the Pool that contains the Compute Node.')
            fprintf('%s\n', '    --json-file          : A file containing the upload batch service logs configuration')
            fprintf('%s\n', '                           specification in JSON (formatted to match the respective REST API body).')
            fprintf('%s\n', '                           If this parameter is specified, all ''Upload Batch Service Logs')
            fprintf('%s\n', '                           Configuration Arguments'' are ignored.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint   : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                           AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key        : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                           AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name       : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                           AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Upload Batch Service Logs Configuration Arguments')
            fprintf('%s\n', '    --container-url      : Required. The URL of the container within Azure Blob Storage to which to')
            fprintf('%s\n', '                           upload the Batch Service log file(s). The URL must include a Shared')
            fprintf('%s\n', '                           Access Signature (SAS) granting write permissions to the container. The')
            fprintf('%s\n', '                           SAS duration must allow enough time for the upload to finish. The start')
            fprintf('%s\n', '                           time for SAS is optional and recommended to not be specified.')
            fprintf('%s\n', '    --end-time           : The end of the time range from which to upload Batch Service log file(s).')
            fprintf('%s\n', '                           Any log file containing a log message in the time range will be uploaded.')
            fprintf('%s\n', '                           This means that the operation might retrieve more logs than have been')
            fprintf('%s\n', '                           requested since the entire log file is always uploaded, but the operation')
            fprintf('%s\n', '                           should not retrieve fewer logs than have been requested. If omitted, the')
            fprintf('%s\n', '                           default is to upload all logs available after the startTime. Expected')
            fprintf('%s\n', '                           format is an ISO-8601 timestamp.')
            fprintf('%s\n', '    --start-time         : Required. The start of the time range from which to upload Batch Service')
            fprintf('%s\n', '                           log file(s). Any log file containing a log message in the time range will')
            fprintf('%s\n', '                           be uploaded. This means that the operation might retrieve more logs than')
            fprintf('%s\n', '                           have been requested since the entire log file is always uploaded, but the')
            fprintf('%s\n', '                           operation should not retrieve fewer logs than have been requested.')
            fprintf('%s\n', '                           Expected format is an ISO-8601 timestamp.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch node service-logs upload"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload 
