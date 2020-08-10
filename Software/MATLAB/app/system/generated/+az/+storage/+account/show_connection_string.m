classdef show_connection_string < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show_connection_string()
            % az storage account show-connection-string : Get the connection string for a storage account.
            this.BaseCmd = 'az storage account show-connection-string ';
        end
        function this = blob_endpoint(this, varargin)
            % Custom endpoint for blobs.
            this.Options = [this.Options, '--blob-endpoint', varargin{:}];
        end

        function this = file_endpoint(this, varargin)
            % Custom endpoint for files.
            this.Options = [this.Options, '--file-endpoint', varargin{:}];
        end

        function this = key(this, varargin)
            % The key to use.  Allowed values: primary, secondary.  Default: primary.
            this.Options = [this.Options, '--key', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The default endpoint protocol.  Allowed values: http, https.  Default: https.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = queue_endpoint(this, varargin)
            % Custom endpoint for queues.
            this.Options = [this.Options, '--queue-endpoint', varargin{:}];
        end

        function this = sas_token(this, varargin)
            % The SAS token to be used in the connection-string.
            this.Options = [this.Options, '--sas-token', varargin{:}];
        end

        function this = table_endpoint(this, varargin)
            % Custom endpoint for tables.
            this.Options = [this.Options, '--table-endpoint', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The storage account name.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage account show-connection-string : Get the connection string for a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --blob-endpoint     : Custom endpoint for blobs.')
            fprintf('%s\n', '    --file-endpoint     : Custom endpoint for files.')
            fprintf('%s\n', '    --key               : The key to use.  Allowed values: primary, secondary.  Default: primary.')
            fprintf('%s\n', '    --protocol          : The default endpoint protocol.  Allowed values: http, https.  Default:')
            fprintf('%s\n', '                          https.')
            fprintf('%s\n', '    --queue-endpoint    : Custom endpoint for queues.')
            fprintf('%s\n', '    --sas-token         : The SAS token to be used in the connection-string.')
            fprintf('%s\n', '    --table-endpoint    : Custom endpoint for tables.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The storage account name.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get a connection string for a storage account.')
            fprintf('%s\n', '        az storage account show-connection-string -g MyResourceGroup -n MyStorageAccount')
            fprintf('%s\n', '    Get the connection string for a storage account. (autogenerated)')
            fprintf('%s\n', '        az storage account show-connection-string --name MyStorageAccount --resource-group')
            fprintf('%s\n', '        MyResourceGroup --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account show-connection-string"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show_connection_string 
