classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az vm host group create : Create a dedicated host group.
            this.BaseCmd = 'az vm host group create ';
        end
        function this = name(this, varargin)
            % Name of the Dedicated Host Group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = automatic_placement(this, varargin)
            % Specify whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to true when not provided.  Allowed values: false, true.
            this.Options = [this.Options, '--automatic-placement', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`. Otherwise, location will default to the resource group's location.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = platform_fault_domain_count(this, varargin)
            % Number of fault domains that the host group can span. Allowed values: 1, 2, 3.
            this.Options = [this.Options, '--platform-fault-domain-count', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az vm host group create : Create a dedicated host group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n             [Required] : Name of the Dedicated Host Group.')
            fprintf('%s\n', '    --resource-group -g   [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --automatic-placement            : Specify whether virtual machines or virtual machine scale')
            fprintf('%s\n', '                                       sets can be placed automatically on the dedicated host group.')
            fprintf('%s\n', '                                       Automatic placement means resources are allocated on')
            fprintf('%s\n', '                                       dedicated hosts, that are chosen by Azure, under the')
            fprintf('%s\n', '                                       dedicated host group. The value is defaulted to true when not')
            fprintf('%s\n', '                                       provided.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                    : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                       configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                       location=<location>`. Otherwise, location will default to the')
            fprintf('%s\n', '                                       resource group''s location.')
            fprintf('%s\n', '    --platform-fault-domain-count -c : Number of fault domains that the host group can span. Allowed')
            fprintf('%s\n', '                                       values: 1, 2, 3.')
            fprintf('%s\n', '    --tags                           : Space-separated tags: key[=value] [key[=value] ...]. Use ''''')
            fprintf('%s\n', '                                       to clear existing tags.')
            fprintf('%s\n', '    --zone -z                        : Availability zone into which to provision the resource.')
            fprintf('%s\n', '                                       Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a dedicated host group. (autogenerated)')
            fprintf('%s\n', '        az vm host group create --name MyDedicatedHostGroup --platform-fault-domain-count 2')
            fprintf('%s\n', '        --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm host group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
