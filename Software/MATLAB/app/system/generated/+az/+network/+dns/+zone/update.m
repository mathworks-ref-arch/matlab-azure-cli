classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network dns zone update : Update a DNS zone properties. Does not modify DNS records within
            % the zone.
            this.BaseCmd = 'az network dns zone update ';
        end
        function this = name(this, varargin)
            % The name of the zone.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = if_match(this, varargin)
            % Update only if the resource with the same ETAG exists.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = zone_type(this, varargin)
            % Type of DNS zone to create.  Allowed values: Private, Public. Argument 'zone_type' has been deprecated and will be removed in a future release.
            this.Options = [this.Options, '--zone-type', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>. Private Zone Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = registration_vnets(this, varargin)
            % Space-separated names or IDs of virtual networks that register hostnames in this DNS zone. Number of private DNS zones with virtual network auto-registration enabled is 1. If you need to increase this limit, please contact Azure Support: https://docs.microsoft.com/en-us/azure/azure-subscription- service-limits.
            this.Options = [this.Options, '--registration-vnets', varargin{:}];
        end

        function this = resolution_vnets(this, varargin)
            % Space-separated names or IDs of virtual networks that resolve records in this DNS zone.
            this.Options = [this.Options, '--resolution-vnets', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network dns zone update : Update a DNS zone properties. Does not modify DNS records within')
            fprintf('%s\n', '    the zone.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the zone.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --if-match                     : Update only if the resource with the same ETAG exists.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --zone-type       [Deprecated] : Type of DNS zone to create.  Allowed values: Private,')
            fprintf('%s\n', '                                     Public.')
            fprintf('%s\n', '        Argument ''zone_type'' has been deprecated and will be removed in a future release.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                          : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                     value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                     string or JSON string>.')
            fprintf('%s\n', '    --force-string                 : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                     attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                       : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                     property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                          : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                     set.  Example: --set property1.property2=<value>.')
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
            fprintf('%s\n', '    Update a DNS zone properties to change the user-defined value of a previously set tag.')
            fprintf('%s\n', '        az network dns zone update -g MyResourceGroup -n www.mysite.com --tags CostCenter=Marketing')
            fprintf('%s\n', '    Update a DNS zone properties (autogenerated)')
            fprintf('%s\n', '        az network dns zone update --name www.mysite.com --remove tags.no_80 --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network dns zone update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
