classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az redis create : Create new Redis Cache instance.
            this.BaseCmd = 'az redis create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Redis cache.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % Type of Redis cache.  Allowed values: Basic, Premium, Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = vm_size(this, varargin)
            % Size of Redis cache to deploy. Basic and Standard Cache sizes start with C. Premium Cache sizes start with P.  Allowed values: c0, c1, c2, c3, c4, c5, c6, p1, p2, p3, p4, p5.
            this.Options = [this.Options, '--vm-size', varargin{:}];
        end

        function this = enable_non_ssl_port(this, varargin)
            % If specified, then the non-ssl redis server port (6379) will be enabled.
            this.Options = [this.Options, '--enable-non-ssl-port', varargin{:}];
        end

        function this = minimum_tls_version(this, varargin)
            % Specifies the TLS version required by clients to connect to cache.  Allowed values: 1.0, 1.1, 1.2.
            this.Options = [this.Options, '--minimum-tls-version', varargin{:}];
        end

        function this = redis_configuration(this, varargin)
            % JSON encoded configuration settings. Use @{file} to load from a file.
            this.Options = [this.Options, '--redis-configuration', varargin{:}];
        end

        function this = replicas_per_master(this, varargin)
            % The number of replicas to be created per master. Argument '--replicas-per-master' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--replicas-per-master', varargin{:}];
        end

        function this = shard_count(this, varargin)
            % The number of shards to be created on a Premium Cluster Cache.
            this.Options = [this.Options, '--shard-count', varargin{:}];
        end

        function this = static_ip(this, varargin)
            % Specify a static ip if required for the VNET. If you do not specify a static IP then an IP address is chosen automatically.
            this.Options = [this.Options, '--static-ip', varargin{:}];
        end

        function this = subnet_id(this, varargin)
            % The full resource ID of a subnet in a virtual network to deploy the redis cache in. Example format /subscriptions/{subi d}/resourceGroups/{resourceGroupName}/providers/Microsoft.{Net work|ClassicNetwork}/virtualNetworks/vnet1/subnets/subnet1.
            this.Options = [this.Options, '--subnet-id', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = tenant_settings(this, varargin)
            % Space-separated tenant settings in key[=value] format.
            this.Options = [this.Options, '--tenant-settings', varargin{:}];
        end

        function this = zones(this, varargin)
            % Space-separated list of availability zones into which to provision the resource.  Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--zones', varargin{:}];
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
            fprintf('%s\n', '    az redis create : Create new Redis Cache instance.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l        [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --name -n            [Required] : Name of the Redis cache.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku                [Required] : Type of Redis cache.  Allowed values: Basic, Premium,')
            fprintf('%s\n', '                                      Standard.')
            fprintf('%s\n', '    --vm-size            [Required] : Size of Redis cache to deploy. Basic and Standard Cache sizes')
            fprintf('%s\n', '                                      start with C. Premium Cache sizes start with P.  Allowed')
            fprintf('%s\n', '                                      values: c0, c1, c2, c3, c4, c5, c6, p1, p2, p3, p4, p5.')
            fprintf('%s\n', '    --enable-non-ssl-port           : If specified, then the non-ssl redis server port (6379) will')
            fprintf('%s\n', '                                      be enabled.')
            fprintf('%s\n', '    --minimum-tls-version           : Specifies the TLS version required by clients to connect to')
            fprintf('%s\n', '                                      cache.  Allowed values: 1.0, 1.1, 1.2.')
            fprintf('%s\n', '    --redis-configuration           : JSON encoded configuration settings. Use @{file} to load from')
            fprintf('%s\n', '                                      a file.')
            fprintf('%s\n', '    --replicas-per-master [Preview] : The number of replicas to be created per master.')
            fprintf('%s\n', '        Argument ''--replicas-per-master'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --shard-count                   : The number of shards to be created on a Premium Cluster Cache.')
            fprintf('%s\n', '    --static-ip                     : Specify a static ip if required for the VNET. If you do not')
            fprintf('%s\n', '                                      specify a static IP then an IP address is chosen')
            fprintf('%s\n', '                                      automatically.')
            fprintf('%s\n', '    --subnet-id                     : The full resource ID of a subnet in a virtual network to')
            fprintf('%s\n', '                                      deploy the redis cache in. Example format /subscriptions/{subi')
            fprintf('%s\n', '                                      d}/resourceGroups/{resourceGroupName}/providers/Microsoft.{Net')
            fprintf('%s\n', '                                      work|ClassicNetwork}/virtualNetworks/vnet1/subnets/subnet1.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', '    --tenant-settings               : Space-separated tenant settings in key[=value] format.')
            fprintf('%s\n', '    --zones -z                      : Space-separated list of availability zones into which to')
            fprintf('%s\n', '                                      provision the resource.  Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create new Redis Cache instance. (autogenerated)')
            fprintf('%s\n', '        az redis create --location westus2 --name MyRedisCache --resource-group MyResourceGroup')
            fprintf('%s\n', '        --sku Basic --vm-size c0')
            fprintf('%s\n', 'For more specific examples, use: az find "az redis create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
