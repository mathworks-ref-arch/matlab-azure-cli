classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az deploymentmanager service update : Updates the service.
            % Command group 'deploymentmanager' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az deploymentmanager service update ';
        end
        function this = name(this, varargin)
            % The name of the service.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_topology_name(this, varargin)
            % The name of the service topology.
            this.Options = [this.Options, '--service-topology-name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = target_location(this, varargin)
            % The location where the resources in the service should be deployed to.
            this.Options = [this.Options, '--target-location', varargin{:}];
        end

        function this = target_subscription_id(this, varargin)
            % The subscription to which the resources in the service should be deployed to.
            this.Options = [this.Options, '--target-subscription-id', varargin{:}];
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
            fprintf('%s\n', '    az deploymentmanager service update : Updates the service.')
            fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name --service-name -n [Required] : The name of the service.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-topology-name  [Required] : The name of the service topology.')
            fprintf('%s\n', '    --tags                              : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                          '''' to clear existing tags.')
            fprintf('%s\n', '    --target-location                   : The location where the resources in the service should be')
            fprintf('%s\n', '                                          deployed to.')
            fprintf('%s\n', '    --target-subscription-id            : The subscription to which the resources in the service')
            fprintf('%s\n', '                                          should be deployed to.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                               : Add an object to a list of objects by specifying a path')
            fprintf('%s\n', '                                          and key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                          <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                      : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                          instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                            : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                          --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                          propertyToRemove.')
            fprintf('%s\n', '    --set                               : Update an object by specifying a property path and value')
            fprintf('%s\n', '                                          to set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates the service.')
            fprintf('%s\n', '        az deploymentmanager service update -g rg1 --service-topology-name contosoServiceTopology -n')
            fprintf('%s\n', '        contosoService1 --target-location "West US" --target-subscription-id XXXXXXXX-XXXX-XXXX-')
            fprintf('%s\n', '        XXXX-XXXXXXXXXXXX')
            fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager service update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
