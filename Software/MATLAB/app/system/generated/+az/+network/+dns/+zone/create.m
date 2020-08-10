classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network dns zone create : Create a DNS zone.
            this.BaseCmd = 'az network dns zone create ';
        end
        function this = name(this, varargin)
            % The name of the zone.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % Only create a DNS zone if one doesn't exist that matches the given name.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = parent_name(this, varargin)
            % Specify if parent zone exists for this zone and delegation for the child zone in the parent is to be added.
            this.Options = [this.Options, '--parent-name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = zone_type(this, varargin)
            % Type of DNS zone to create.  Allowed values: Private, Public.  Default: Public. Argument 'zone_type' has been deprecated and will be removed in a future release. Private Zone Arguments
            this.Options = [this.Options, '--zone-type', varargin{:}];
        end

        function this = registration_vnets(this, varargin)
            % Space-separated names or IDs of virtual networks that register hostnames in this DNS zone. Number of private DNS zones with virtual network auto-registration enabled is 1. If you need to increase this limit, please contact Azure Support: https://docs.microsoft.com/en-us/azure/azure-subscription- service-limits.
            this.Options = [this.Options, '--registration-vnets', varargin{:}];
        end

        function this = resolution_vnets(this, varargin)
            % Space-separated names or IDs of virtual networks that resolve records in this DNS zone.
            this.Options = [this.Options, '--resolution-vnets', varargin{:}];
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
            fprintf('%s\n', '    az network dns zone create : Create a DNS zone.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the zone.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --if-none-match                : Only create a DNS zone if one doesn''t exist that matches the')
            fprintf('%s\n', '                                     given name.')
            fprintf('%s\n', '    --parent-name -p               : Specify if parent zone exists for this zone and delegation for')
            fprintf('%s\n', '                                     the child zone in the parent is to be added.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --zone-type       [Deprecated] : Type of DNS zone to create.  Allowed values: Private,')
            fprintf('%s\n', '                                     Public.  Default: Public.')
            fprintf('%s\n', '        Argument ''zone_type'' has been deprecated and will be removed in a future release.')
            fprintf('%s\n', 'Private Zone Arguments')
            fprintf('%s\n', '    --registration-vnets           : Space-separated names or IDs of virtual networks that register')
            fprintf('%s\n', '                                     hostnames in this DNS zone. Number of private DNS zones with')
            fprintf('%s\n', '                                     virtual network auto-registration enabled is 1. If you need to')
            fprintf('%s\n', '                                     increase this limit, please contact Azure Support:')
            fprintf('%s\n', '                                     https://docs.microsoft.com/en-us/azure/azure-subscription-')
            fprintf('%s\n', '                                     service-limits.')
            fprintf('%s\n', '    --resolution-vnets             : Space-separated names or IDs of virtual networks that resolve')
            fprintf('%s\n', '                                     records in this DNS zone.')
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
            fprintf('%s\n', '    Create a DNS zone using a fully qualified domain name.')
            fprintf('%s\n', '        az network dns zone create -g MyResourceGroup -n www.mysite.com')
            fprintf('%s\n', '    Create a DNS zone with delegation in the parent within the same subscription and resource group')
            fprintf('%s\n', '        az network dns zone create -g MyResourceGroup -n books.mysite.com -p mysite.com')
            fprintf('%s\n', '    Create a DNS zone with delegation in the parent in different subscription')
            fprintf('%s\n', '        az network dns zone create -g MyResourceGroup -n books.mysite.com -p "/subscriptions/**67e2/')
            fprintf('%s\n', '        resourceGroups/OtherRg/providers/Microsoft.Network/dnszones/mysite.com"')
            fprintf('%s\n', 'For more specific examples, use: az find "az network dns zone create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
