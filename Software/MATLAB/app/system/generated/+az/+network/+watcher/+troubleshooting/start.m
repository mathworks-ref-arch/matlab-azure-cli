classdef start < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start()
            % az network watcher troubleshooting start : Troubleshoot issues with VPN connections or gateway
            % connectivity.
            this.BaseCmd = 'az network watcher troubleshooting start ';
        end
        function this = resource(this, varargin)
            % Name or ID of the resource to troubleshoot.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name or ID of the storage account in which to store the troubleshooting results.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = storage_path(this, varargin)
            % Fully qualified URI to the storage blob container in which to store the troubleshooting results.
            this.Options = [this.Options, '--storage-path', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % The type of target resource to troubleshoot, if resource ID is not specified.  Allowed values: vnetGateway, vpnConnection.
            this.Options = [this.Options, '--resource-type', varargin{:}];
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
            fprintf('%s\n', '    az network watcher troubleshooting start : Troubleshoot issues with VPN connections or gateway')
            fprintf('%s\n', '    connectivity.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource        [Required] : Name or ID of the resource to troubleshoot.')
            fprintf('%s\n', '    --storage-account [Required] : Name or ID of the storage account in which to store the')
            fprintf('%s\n', '                                   troubleshooting results.')
            fprintf('%s\n', '    --storage-path    [Required] : Fully qualified URI to the storage blob container in which to')
            fprintf('%s\n', '                                   store the troubleshooting results.')
            fprintf('%s\n', '    --no-wait                    : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-type -t           : The type of target resource to troubleshoot, if resource ID is')
            fprintf('%s\n', '                                   not specified.  Allowed values: vnetGateway, vpnConnection.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Start a troubleshooting operation on a VPN Connection.')
            fprintf('%s\n', '        az network watcher troubleshooting start -g MyResourceGroup --resource MyVPNConnection \')
            fprintf('%s\n', '            --resource-type vpnConnection --storage-account MyStorageAccount \')
            fprintf('%s\n', '            --storage-path https://{storageAccountName}.blob.core.windows.net/{containerName}')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher troubleshooting start"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start 
