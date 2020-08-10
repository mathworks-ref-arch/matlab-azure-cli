classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network virtual-appliance create : Create an Azure network virtual appliance.
            % Command group 'network virtual-appliance' is in preview. It may be changed/removed in a
            % future release.
            this.BaseCmd = 'az network virtual-appliance create ';
        end
        function this = name(this, varargin)
            % The name of Network Virtual Appliance.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vhub(this, varargin)
            % Name or ID of the virtual hub to which the Security Partner Provider belongs.
            this.Options = [this.Options, '--vhub', varargin{:}];
        end

        function this = asn(this, varargin)
            % VirtualAppliance ASN. The valid value ranges from 1 to 4294967295.
            this.Options = [this.Options, '--asn', varargin{:}];
        end

        function this = boot_blobs(this, varargin)
            % Space-separated list of BootStrapConfigurationBlobs storage URLs.
            this.Options = [this.Options, '--boot-blobs', varargin{:}];
        end

        function this = cloud_blobs(this, varargin)
            % Space-separated list of CloudInitConfigurationBlob storage URLs.
            this.Options = [this.Options, '--cloud-blobs', varargin{:}];
        end

        function this = cloud_init_config(this, varargin)
            % CloudInitConfiguration scripts that will be run during cloud initialization.
            this.Options = [this.Options, '--cloud-init-config', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Sku Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = scale_unit(this, varargin)
            % Virtual Appliance Scale Unit.
            this.Options = [this.Options, '--scale-unit', varargin{:}];
        end

        function this = vendor(this, varargin)
            % Virtual Appliance Vendor.
            this.Options = [this.Options, '--vendor', varargin{:}];
        end

        function this = version(this, varargin)
            % Virtual Appliance Version.
            this.Options = [this.Options, '--version', varargin{:}];
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
            fprintf('%s\n', '    az network virtual-appliance create : Create an Azure network virtual appliance.')
            fprintf('%s\n', '        Command group ''network virtual-appliance'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                    [Required] : The name of Network Virtual Appliance.')
            fprintf('%s\n', '    --resource-group -g          [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                              group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vhub                       [Required] : Name or ID of the virtual hub to which the Security')
            fprintf('%s\n', '                                              Partner Provider belongs.')
            fprintf('%s\n', '    --asn                                   : VirtualAppliance ASN. The valid value ranges from 1 to')
            fprintf('%s\n', '                                              4294967295.')
            fprintf('%s\n', '    --boot-blobs --boot-strap-config-blobs  : Space-separated list of BootStrapConfigurationBlobs')
            fprintf('%s\n', '                                              storage URLs.')
            fprintf('%s\n', '    --cloud-blobs --cloud-init-config-blobs : Space-separated list of CloudInitConfigurationBlob')
            fprintf('%s\n', '                                              storage URLs.')
            fprintf('%s\n', '    --cloud-init-config --init-config       : CloudInitConfiguration scripts that will be run during')
            fprintf('%s\n', '                                              cloud initialization.')
            fprintf('%s\n', '    --location -l                           : Location. Values from: `az account list-locations`.')
            fprintf('%s\n', '                                              You can configure the default location using `az')
            fprintf('%s\n', '                                              configure --defaults location=<location>`.')
            fprintf('%s\n', '    --tags                                  : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                              Use '''' to clear existing tags.')
            fprintf('%s\n', 'Sku Arguments')
            fprintf('%s\n', '    --scale-unit                 [Required] : Virtual Appliance Scale Unit.')
            fprintf('%s\n', '    --vendor                     [Required] : Virtual Appliance Vendor.')
            fprintf('%s\n', '    --version -v                 [Required] : Virtual Appliance Version.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                             : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                              table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                 : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                              more information and examples.')
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an Azure network virtual appliance.')
            fprintf('%s\n', '        az network virtual-appliance create -n MyName -g MyRG --vhub {vhubID} --vendor')
            fprintf('%s\n', '        "barracudasdwanrelease" --scale-unit 2 -v latest --asn 10000 --init-config "echo $hello"')
            fprintf('%s\n', '        --boot-blobs {blobUrl1} {blobUrl2} --cloud-blobs {blobUrl3} {blobUrl4}')
            fprintf('%s\n', 'For more specific examples, use: az find "az network virtual-appliance create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
