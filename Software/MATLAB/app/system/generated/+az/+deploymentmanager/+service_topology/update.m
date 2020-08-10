classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az deploymentmanager service-topology update : Updates the service topology.
            % Command group 'deploymentmanager' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az deploymentmanager service-topology update ';
        end
        function this = name(this, varargin)
            % The name of the service topology.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = artifact_source(this, varargin)
            % The name or resource identifier of the artifact source.
            this.Options = [this.Options, '--artifact-source', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list. Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
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
            fprintf('%s\n', '    az deploymentmanager service-topology update : Updates the service topology.')
            fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name --service-topology-name -n [Required] : The name of the service topology.')
            fprintf('%s\n', '    --resource-group -g               [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                   default group using `az configure --defaults')
            fprintf('%s\n', '                                                   group=<name>`.')
            fprintf('%s\n', '    --artifact-source                            : The name or resource identifier of the artifact')
            fprintf('%s\n', '                                                   source.')
            fprintf('%s\n', '    --tags                                       : Space-separated tags: key[=value] [key[=value]')
            fprintf('%s\n', '                                                   ...]. Use '''' to clear existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                        : Add an object to a list of objects by specifying')
            fprintf('%s\n', '                                                   a path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                                   property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                                   string>.')
            fprintf('%s\n', '    --force-string                               : When using ''set'' or ''add'', preserve string')
            fprintf('%s\n', '                                                   literals instead of attempting to convert to')
            fprintf('%s\n', '                                                   JSON.')
            fprintf('%s\n', '    --remove                                     : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                   Example: --remove property.list <indexToRemove>')
            fprintf('%s\n', '                                                   OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                        : Update an object by specifying a property path')
            fprintf('%s\n', '                                                   and value to set.  Example: --set')
            fprintf('%s\n', '                                                   property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                      : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                   logs.')
            fprintf('%s\n', '    --help -h                                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                  : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                   none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                      : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                   for more information and examples.')
            fprintf('%s\n', '    --subscription                               : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                   default subscription using `az account set -s')
            fprintf('%s\n', '                                                   NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                    : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                   debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates the service topology.')
            fprintf('%s\n', '        az deploymentmanager service-topology update -g rg1 -n contosoServiceTopology --artifact-')
            fprintf('%s\n', '        source /subscriptions/mySub/resourcegroups/rg1/providers/Microsoft.DeploymentManager/artifac')
            fprintf('%s\n', '        tSources/contosoWebAppArtifactSource')
            fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager service-topology update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
