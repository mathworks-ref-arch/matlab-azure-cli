classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network public-ip create : Create a public IP address.
            % [Coming breaking change] In the coming release, the default behavior will be changed as
            % follows when sku is Standard and zone is not provided: For zonal regions, you will get a
            % zone-redundant IP indicated by zones:["1","2","3"]; For non-zonal regions, you will get a
            % non zone-redundant IP indicated by zones:[].
            this.BaseCmd = 'az network public-ip create ';
        end
        function this = name(this, varargin)
            % The name of the public IP address.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = allocation_method(this, varargin)
            % IP address allocation method.  Allowed values: Dynamic, Static.
            this.Options = [this.Options, '--allocation-method', varargin{:}];
        end

        function this = dns_name(this, varargin)
            % Globally unique DNS entry.
            this.Options = [this.Options, '--dns-name', varargin{:}];
        end

        function this = idle_timeout(this, varargin)
            % Idle timeout in minutes.  Default: 4.
            this.Options = [this.Options, '--idle-timeout', varargin{:}];
        end

        function this = ip_tags(this, varargin)
            % Space-separated list of IP tags in 'TYPE=VAL' format.
            this.Options = [this.Options, '--ip-tags', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = public_ip_prefix(this, varargin)
            % Name or ID of a public IP prefix.
            this.Options = [this.Options, '--public-ip-prefix', varargin{:}];
        end

        function this = reverse_fqdn(this, varargin)
            % Reverse FQDN (fully qualified domain name).
            this.Options = [this.Options, '--reverse-fqdn', varargin{:}];
        end

        function this = sku(this, varargin)
            % Public IP SKU.  Allowed values: Basic, Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = version(this, varargin)
            % IP address type.  Allowed values: IPv4, IPv6.  Default: IPv4.
            this.Options = [this.Options, '--version', varargin{:}];
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
            fprintf('%s\n', '    az network public-ip create : Create a public IP address.')
            fprintf('%s\n', '        [Coming breaking change] In the coming release, the default behavior will be changed as')
            fprintf('%s\n', '        follows when sku is Standard and zone is not provided: For zonal regions, you will get a')
            fprintf('%s\n', '        zone-redundant IP indicated by zones:["1","2","3"]; For non-zonal regions, you will get a')
            fprintf('%s\n', '        non zone-redundant IP indicated by zones:[].')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the public IP address.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --allocation-method            : IP address allocation method.  Allowed values: Dynamic, Static.')
            fprintf('%s\n', '    --dns-name                     : Globally unique DNS entry.')
            fprintf('%s\n', '    --idle-timeout                 : Idle timeout in minutes.  Default: 4.')
            fprintf('%s\n', '    --ip-tags                      : Space-separated list of IP tags in ''TYPE=VAL'' format.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --public-ip-prefix             : Name or ID of a public IP prefix.')
            fprintf('%s\n', '    --reverse-fqdn                 : Reverse FQDN (fully qualified domain name).')
            fprintf('%s\n', '    --sku                          : Public IP SKU.  Allowed values: Basic, Standard.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --version                      : IP address type.  Allowed values: IPv4, IPv6.  Default: IPv4.')
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
            fprintf('%s\n', '    Create a basic public IP resource.')
            fprintf('%s\n', '        az network public-ip create -g MyResourceGroup -n MyIp')
            fprintf('%s\n', '    Create a static public IP resource for a DNS name label.')
            fprintf('%s\n', '        az network public-ip create -g MyResourceGroup -n MyIp --dns-name MyLabel --allocation-')
            fprintf('%s\n', '        method Static')
            fprintf('%s\n', '    Create a public IP resource in an availability zone in the current resource group region.')
            fprintf('%s\n', '        az network public-ip create -g MyResourceGroup -n MyIp --zone 2')
            fprintf('%s\n', 'For more specific examples, use: az find "az network public-ip create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
