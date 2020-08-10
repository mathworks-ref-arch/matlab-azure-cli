classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az vm host create : Create a dedicated host.
            this.BaseCmd = 'az vm host create ';
        end
        function this = host_group(this, varargin)
            % Name of the Dedicated Host Group.
            this.Options = [this.Options, '--host-group', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Dedicated Host.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % Sku of the dedicated host.  Allowed values: DSv3-Type1, ESv3-Type1, FSv2-Type2.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = auto_replace(this, varargin)
            % Replace the host automatically if a failure occurs.  Allowed values: false, true.
            this.Options = [this.Options, '--auto-replace', varargin{:}];
        end

        function this = license_type(this, varargin)
            % The software license type that will be applied to the VMs deployed on the dedicated host.  Allowed values: None, Windows_Server_Hybrid, Windows_Server_Perpetual.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`. Otherwise, location will default to the resource group's location.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = platform_fault_domain(this, varargin)
            % Fault domain of the host within a group. Allowed values: 0, 1, 2.
            this.Options = [this.Options, '--platform-fault-domain', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az vm host create : Create a dedicated host.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --host-group        [Required] : Name of the Dedicated Host Group.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the Dedicated Host.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku               [Required] : Sku of the dedicated host.  Allowed values: DSv3-Type1,')
            fprintf('%s\n', '                                     ESv3-Type1, FSv2-Type2.')
            fprintf('%s\n', '    --auto-replace                 : Replace the host automatically if a failure occurs.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --license-type                 : The software license type that will be applied to the VMs')
            fprintf('%s\n', '                                     deployed on the dedicated host.  Allowed values: None,')
            fprintf('%s\n', '                                     Windows_Server_Hybrid, Windows_Server_Perpetual.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`. Otherwise, location will default to the')
            fprintf('%s\n', '                                     resource group''s location.')
            fprintf('%s\n', '    --platform-fault-domain -d     : Fault domain of the host within a group. Allowed values: 0, 1,')
            fprintf('%s\n', '                                     2.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
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
            fprintf('%s\n', '    Create a dedicated host. Ensure it auto replaces on failure')
            fprintf('%s\n', '        az vm host create --host-group my-host-group --name my-host --platform-fault-domain 2 \')
            fprintf('%s\n', '            --auto-replace --resource-group my-resource-group --sku DSv3-Type1')
            fprintf('%s\n', '    Create a dedicated host in the ''east asia'' region. Don''t auto replace on failure.')
            fprintf('%s\n', '        az vm host create --host-group my-host-group --name my-host --platform-fault-domain 0 \')
            fprintf('%s\n', '            --auto-replace false --resource-group my-resource-group --sku ESv3-Type1 --location')
            fprintf('%s\n', '        eastasia')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm host create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
