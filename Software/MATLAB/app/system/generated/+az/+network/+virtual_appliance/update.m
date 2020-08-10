classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network virtual-appliance update : Update an Azure network virtual appliance.
            % Command group 'network virtual-appliance' is in preview. It may be changed/removed in a
            % future release.
            this.BaseCmd = 'az network virtual-appliance update ';
        end
        function this = name(this, varargin)
            % The name of Network Virtual Appliance.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = asn(this, varargin)
            % VirtualAppliance ASN. The valid value ranges from 1 to 4294967295.
            this.Options = [this.Options, '--asn', varargin{:}];
        end

        function this = cloud_init_config(this, varargin)
            % CloudInitConfiguration scripts that will be run during cloud initialization.
            this.Options = [this.Options, '--cloud-init-config', varargin{:}];
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network virtual-appliance update : Update an Azure network virtual appliance.')
            fprintf('%s\n', '        Command group ''network virtual-appliance'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n              [Required] : The name of Network Virtual Appliance.')
            fprintf('%s\n', '    --resource-group -g    [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                        using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --asn                             : VirtualAppliance ASN. The valid value ranges from 1 to')
            fprintf('%s\n', '                                        4294967295.')
            fprintf('%s\n', '    --cloud-init-config --init-config : CloudInitConfiguration scripts that will be run during cloud')
            fprintf('%s\n', '                                        initialization.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                             : Add an object to a list of objects by specifying a path and')
            fprintf('%s\n', '                                        key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                        <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                    : When using ''set'' or ''add'', preserve string literals instead')
            fprintf('%s\n', '                                        of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                          : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                        --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                        propertyToRemove.')
            fprintf('%s\n', '    --set                             : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                        set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an Azure network virtual appliance.')
            fprintf('%s\n', '        az network virtual-appliance update -n MyName -g MyRG --asn 20000 --init-config "echo')
            fprintf('%s\n', '        $hello"')
            fprintf('%s\n', 'For more specific examples, use: az find "az network virtual-appliance update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
