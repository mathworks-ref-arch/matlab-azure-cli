classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network nat gateway create : Create a NAT gateway.
            this.BaseCmd = 'az network nat gateway create ';
        end
        function this = name(this, varargin)
            % Name of the NAT gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = idle_timeout(this, varargin)
            % Idle timeout in minutes.
            this.Options = [this.Options, '--idle-timeout', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = public_ip_addresses(this, varargin)
            % Space-separated list of public IP addresses (names or IDs).
            this.Options = [this.Options, '--public-ip-addresses', varargin{:}];
        end

        function this = public_ip_prefixes(this, varargin)
            % Space-separated list of public IP prefixes (names or IDs).
            this.Options = [this.Options, '--public-ip-prefixes', varargin{:}];
        end

        function this = zone(this, varargin)
            % Availability zone into which to provision the resource. Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--zone', varargin{:}];
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
            fprintf('%s\n', '    az network nat gateway create : Create a NAT gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the NAT gateway.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --idle-timeout                 : Idle timeout in minutes.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --public-ip-addresses          : Space-separated list of public IP addresses (names or IDs).')
            fprintf('%s\n', '    --public-ip-prefixes           : Space-separated list of public IP prefixes (names or IDs).')
            fprintf('%s\n', '    --zone -z                      : Availability zone into which to provision the resource.')
            fprintf('%s\n', '                                     Allowed values: 1, 2, 3.')
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
            fprintf('%s\n', '    Create a NAT gateway.')
            fprintf('%s\n', '        az network nat gateway create --resource-group MyResourceGroup --name MyNatGateway')
            fprintf('%s\n', '        --location MyLocation --public-ip-addresses  MyPublicIp --public-ip-prefixes')
            fprintf('%s\n', '        MyPublicIpPrefix --idle-timeout 4 --zone 2')
            fprintf('%s\n', 'For more specific examples, use: az find "az network nat gateway create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
