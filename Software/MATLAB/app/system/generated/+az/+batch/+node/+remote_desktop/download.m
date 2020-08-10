classdef download < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download()
            % az batch node remote-desktop download : Gets the Remote Desktop Protocol file for the specified
            % Compute Node.
            % Before you can access a Compute Node by using the RDP file, you must create a user Account
            % on the Compute Node. This API can only be invoked on Pools created with a cloud service
            % configuration. For Pools created with a virtual machine configuration, see the
            % GetRemoteLoginSettings API.
            this.BaseCmd = 'az batch node remote-desktop download ';
        end
        function this = destination(this, varargin)
            % The path to the destination file or directory.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = node_id(this, varargin)
            % The ID of the Compute Node for which you want to get the Remote Desktop Protocol file.
            this.Options = [this.Options, '--node-id', varargin{:}];
        end

        function this = pool_id(this, varargin)
            % The ID of the Pool that contains the Compute Node.
            this.Options = [this.Options, '--pool-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch node remote-desktop download"
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
            % Batch account name. Alternatively, set by environment variable: AZURE_BATCH_ACCOUNT.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch node remote-desktop download : Gets the Remote Desktop Protocol file for the specified')
            fprintf('%s\n', '    Compute Node.')
            fprintf('%s\n', '        Before you can access a Compute Node by using the RDP file, you must create a user Account')
            fprintf('%s\n', '        on the Compute Node. This API can only be invoked on Pools created with a cloud service')
            fprintf('%s\n', '        configuration. For Pools created with a virtual machine configuration, see the')
            fprintf('%s\n', '        GetRemoteLoginSettings API.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination [Required] : The path to the destination file or directory.')
            fprintf('%s\n', '    --node-id     [Required] : The ID of the Compute Node for which you want to get the Remote')
            fprintf('%s\n', '                               Desktop Protocol file.')
            fprintf('%s\n', '    --pool-id     [Required] : The ID of the Pool that contains the Compute Node.')
            fprintf('%s\n', 'Batch Account Arguments')
            fprintf('%s\n', '    --account-endpoint       : Batch service endpoint. Alternatively, set by environment variable:')
            fprintf('%s\n', '                               AZURE_BATCH_ENDPOINT.')
            fprintf('%s\n', '    --account-key            : Batch account key. Alternatively, set by environment variable:')
            fprintf('%s\n', '                               AZURE_BATCH_ACCESS_KEY.')
            fprintf('%s\n', '    --account-name           : Batch account name. Alternatively, set by environment variable:')
            fprintf('%s\n', '                               AZURE_BATCH_ACCOUNT.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch node remote-desktop download"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download 
