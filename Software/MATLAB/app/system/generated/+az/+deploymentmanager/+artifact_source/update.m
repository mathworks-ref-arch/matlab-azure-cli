classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az deploymentmanager artifact-source update : Updates an artifact source.
            % Command group 'deploymentmanager' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az deploymentmanager artifact-source update ';
        end
        function this = artifact_source_name(this, varargin)
            % The name of the artifact source.
            this.Options = [this.Options, '--artifact-source-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = artifact_root(this, varargin)
            % The root folder under which the artifacts are to be found. This is the path relative to the Azure storage container provided in --sas-uri.
            this.Options = [this.Options, '--artifact-root', varargin{:}];
        end

        function this = sas_uri(this, varargin)
            % The SAS Uri to the Azure Storage container where the artifacts are stored.
            this.Options = [this.Options, '--sas-uri', varargin{:}];
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
            fprintf('%s\n', '    az deploymentmanager artifact-source update : Updates an artifact source.')
            fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --artifact-source-name --name -n [Required] : The name of the artifact source.')
            fprintf('%s\n', '    --resource-group -g              [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', '    --artifact-root                             : The root folder under which the artifacts are to')
            fprintf('%s\n', '                                                  be found. This is the path relative to the Azure')
            fprintf('%s\n', '                                                  storage container provided in --sas-uri.')
            fprintf('%s\n', '    --sas-uri                                   : The SAS Uri to the Azure Storage container where')
            fprintf('%s\n', '                                                  the artifacts are stored.')
            fprintf('%s\n', '    --tags                                      : Space-separated tags: key[=value] [key[=value]')
            fprintf('%s\n', '                                                  ...]. Use '''' to clear existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                       : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                                  path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                                  property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                                  string>.')
            fprintf('%s\n', '    --force-string                              : When using ''set'' or ''add'', preserve string')
            fprintf('%s\n', '                                                  literals instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                    : Remove a property or an element from a list.')
            fprintf('%s\n', '                                                  Example: --remove property.list <indexToRemove> OR')
            fprintf('%s\n', '                                                  --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                       : Update an object by specifying a property path and')
            fprintf('%s\n', '                                                  value to set.  Example: --set')
            fprintf('%s\n', '                                                  property1.property2=<value>.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Updates an artifact source')
            fprintf('%s\n', '        az deploymentmanager artifact-source update -g rg1 -n contosoServiceArtifactSource --sas-uri')
            fprintf('%s\n', '        https://dummy.blob.azure.com/updated_sample_sas_uri')
            fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager artifact-source update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
