classdef test_connectivity < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = test_connectivity()
            % az network watcher test-connectivity : Test if a connection can be established between a Virtual
            % Machine and a given endpoint.
            % To check connectivity between two VMs in different regions, use the VM ids instead of the VM
            % names for the source and destination resource arguments. To register for this feature or see
            % additional examples visit https://docs.microsoft.com/azure/network-watcher/network-watcher-
            % connectivity-cli.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az network watcher test-connectivity ';
        end
        function this = source_resource(this, varargin)
            % Name or ID of the resource from which to originate traffic. Currently only Virtual Machines are supported.
            this.Options = [this.Options, '--source-resource', varargin{:}];
        end

        function this = protocol(this, varargin)
            % Protocol to test on.  Allowed values: Http, Https, Icmp, Tcp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_port(this, varargin)
            % Port number from which to originate traffic. Destination Arguments
            this.Options = [this.Options, '--source-port', varargin{:}];
        end

        function this = dest_address(this, varargin)
            % The IP address or URI at which to receive traffic.
            this.Options = [this.Options, '--dest-address', varargin{:}];
        end

        function this = dest_port(this, varargin)
            % Port number on which to receive traffic.
            this.Options = [this.Options, '--dest-port', varargin{:}];
        end

        function this = dest_resource(this, varargin)
            % Name or ID of the resource to receive traffic. Currently only Virtual Machines are supported. HTTP Configuration Arguments
            this.Options = [this.Options, '--dest-resource', varargin{:}];
        end

        function this = headers(this, varargin)
            % Space-separated list of headers in `KEY=VALUE` format.
            this.Options = [this.Options, '--headers', varargin{:}];
        end

        function this = method(this, varargin)
            % HTTP method to use.  Allowed values: Get.
            this.Options = [this.Options, '--method', varargin{:}];
        end

        function this = valid_status_codes(this, varargin)
            % Space-separated list of HTTP status codes considered valid.
            this.Options = [this.Options, '--valid-status-codes', varargin{:}];
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
            fprintf('%s\n', '    az network watcher test-connectivity : Test if a connection can be established between a Virtual')
            fprintf('%s\n', '    Machine and a given endpoint.')
            fprintf('%s\n', '        To check connectivity between two VMs in different regions, use the VM ids instead of the VM')
            fprintf('%s\n', '        names for the source and destination resource arguments. To register for this feature or see')
            fprintf('%s\n', '        additional examples visit https://docs.microsoft.com/azure/network-watcher/network-watcher-')
            fprintf('%s\n', '        connectivity-cli.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --source-resource [Required] : Name or ID of the resource from which to originate traffic.')
            fprintf('%s\n', '        Currently only Virtual Machines are supported.')
            fprintf('%s\n', '    --protocol                   : Protocol to test on.  Allowed values: Http, Https, Icmp, Tcp.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source-port                : Port number from which to originate traffic.')
            fprintf('%s\n', 'Destination Arguments')
            fprintf('%s\n', '    --dest-address               : The IP address or URI at which to receive traffic.')
            fprintf('%s\n', '    --dest-port                  : Port number on which to receive traffic.')
            fprintf('%s\n', '    --dest-resource              : Name or ID of the resource to receive traffic.')
            fprintf('%s\n', '        Currently only Virtual Machines are supported.')
            fprintf('%s\n', 'HTTP Configuration Arguments')
            fprintf('%s\n', '    --headers                    : Space-separated list of headers in `KEY=VALUE` format.')
            fprintf('%s\n', '    --method                     : HTTP method to use.  Allowed values: Get.')
            fprintf('%s\n', '    --valid-status-codes         : Space-separated list of HTTP status codes considered valid.')
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
            fprintf('%s\n', '    Check connectivity between two virtual machines in the same resource group over port 80.')
            fprintf('%s\n', '        az network watcher test-connectivity -g MyResourceGroup --source-resource MyVmName1 --dest-')
            fprintf('%s\n', '        resource MyVmName2 --dest-port 80')
            fprintf('%s\n', '    Check connectivity between two virtual machines in the same subscription in two different')
            fprintf('%s\n', '    resource groups over port 80.')
            fprintf('%s\n', '        az network watcher test-connectivity --source-resource MyVmId1 --dest-resource MyVmId2')
            fprintf('%s\n', '        --dest-port 80')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher test-connectivity"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class test_connectivity 
