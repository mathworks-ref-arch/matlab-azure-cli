classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network watcher packet-capture create : Create and start a packet capture session.
            this.BaseCmd = 'az network watcher packet-capture create ';
        end
        function this = name(this, varargin)
            % Name of the packet capture session.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group the target VM is in.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vm(this, varargin)
            % Name or ID of the VM to target.
            this.Options = [this.Options, '--vm', varargin{:}];
        end

        function this = capture_limit(this, varargin)
            % The maximum size in bytes of the capture output.
            this.Options = [this.Options, '--capture-limit', varargin{:}];
        end

        function this = capture_size(this, varargin)
            % Number of bytes captured per packet. Excess bytes are truncated.
            this.Options = [this.Options, '--capture-size', varargin{:}];
        end

        function this = filters(this, varargin)
            % JSON encoded list of packet filters. Use `@{path}` to load from file.
            this.Options = [this.Options, '--filters', varargin{:}];
        end

        function this = time_limit(this, varargin)
            % Maximum duration of the capture session in seconds. Storage Arguments
            this.Options = [this.Options, '--time-limit', varargin{:}];
        end

        function this = file_path(this, varargin)
            % Local path on the targeted VM at which to save the packet capture. For Linux VMs, the path must start with /var/captures.
            this.Options = [this.Options, '--file-path', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name or ID of a storage account to save the packet capture to.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = storage_path(this, varargin)
            % Fully qualified URI of an existing storage container in which to store the capture file. If not specified, the container 'network-watcher-logs' will be created if it does not exist and the capture file will be stored there.
            this.Options = [this.Options, '--storage-path', varargin{:}];
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
            fprintf('%s\n', '    az network watcher packet-capture create : Create and start a packet capture session.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the packet capture session.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the resource group the target VM is in.')
            fprintf('%s\n', '    --vm                [Required] : Name or ID of the VM to target.')
            fprintf('%s\n', '    --capture-limit                : The maximum size in bytes of the capture output.')
            fprintf('%s\n', '    --capture-size                 : Number of bytes captured per packet. Excess bytes are')
            fprintf('%s\n', '                                     truncated.')
            fprintf('%s\n', '    --filters                      : JSON encoded list of packet filters. Use `@{path}` to load from')
            fprintf('%s\n', '                                     file.')
            fprintf('%s\n', '    --time-limit                   : Maximum duration of the capture session in seconds.')
            fprintf('%s\n', 'Storage Arguments')
            fprintf('%s\n', '    --file-path                    : Local path on the targeted VM at which to save the packet')
            fprintf('%s\n', '                                     capture. For Linux VMs, the path must start with /var/captures.')
            fprintf('%s\n', '    --storage-account              : Name or ID of a storage account to save the packet capture to.')
            fprintf('%s\n', '    --storage-path                 : Fully qualified URI of an existing storage container in which')
            fprintf('%s\n', '                                     to store the capture file.')
            fprintf('%s\n', '        If not specified, the container ''network-watcher-logs'' will be created if it does not exist')
            fprintf('%s\n', '        and the capture file will be stored there.')
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
            fprintf('%s\n', '    Create a packet capture session on a VM.')
            fprintf('%s\n', '        az network watcher packet-capture create -g MyResourceGroup -n MyPacketCaptureName --vm MyVm')
            fprintf('%s\n', '        --storage-account MyStorageAccount')
            fprintf('%s\n', '    Create a packet capture session on a VM with optional filters for protocols, local IP address')
            fprintf('%s\n', '    and remote IP address ranges and ports.')
            fprintf('%s\n', '        az network watcher packet-capture create -g MyResourceGroup -n MyPacketCaptureName --vm MyVm')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --storage-account MyStorageAccount --filters ''[ \')
            fprintf('%s\n', '                { \')
            fprintf('%s\n', '                    "protocol":"TCP", \')
            fprintf('%s\n', '                    "remoteIPAddress":"1.1.1.1-255.255.255", \')
            fprintf('%s\n', '                    "localIPAddress":"10.0.0.3", \')
            fprintf('%s\n', '                    "remotePort":"20" \')
            fprintf('%s\n', '                }, \')
            fprintf('%s\n', '                { \')
            fprintf('%s\n', '                    "protocol":"TCP", \')
            fprintf('%s\n', '                    "remoteIPAddress":"1.1.1.1-255.255.255", \')
            fprintf('%s\n', '                    "localIPAddress":"10.0.0.3", \')
            fprintf('%s\n', '                    "remotePort":"80" \')
            fprintf('%s\n', '                }, \')
            fprintf('%s\n', '                { \')
            fprintf('%s\n', '                    "protocol":"TCP", \')
            fprintf('%s\n', '                    "remoteIPAddress":"1.1.1.1-255.255.255", \')
            fprintf('%s\n', '                    "localIPAddress":"10.0.0.3", \')
            fprintf('%s\n', '                    "remotePort":"443" \')
            fprintf('%s\n', '                }, \')
            fprintf('%s\n', '                { \')
            fprintf('%s\n', '                    "protocol":"UDP" \')
            fprintf('%s\n', '                }]''')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher packet-capture create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
