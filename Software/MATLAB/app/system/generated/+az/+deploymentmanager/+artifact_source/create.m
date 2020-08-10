classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az deploymentmanager artifact-source create : Creates an artifact source.
            % Command group 'deploymentmanager' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az deploymentmanager artifact-source create ';
        end
        function this = artifact_source_name(this, varargin)
            % The name of the artifact source.
            this.Options = [this.Options, '--artifact-source-name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list- locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sas_uri(this, varargin)
            % The SAS Uri to the Azure Storage container where the artifacts are stored.
            this.Options = [this.Options, '--sas-uri', varargin{:}];
        end

        function this = artifact_root(this, varargin)
            % The root folder under which the artifacts are to be found. This is the path relative to the Azure storage container provided in --sas-uri.
            this.Options = [this.Options, '--artifact-root', varargin{:}];
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
            fprintf('%s\n', '    az deploymentmanager artifact-source create : Creates an artifact source.')
            fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --artifact-source-name --name -n [Required] : The name of the artifact source.')
            fprintf('%s\n', '    --location -l                    [Required] : Location. Values from: `az account list-')
            fprintf('%s\n', '                                                  locations`. You can configure the default location')
            fprintf('%s\n', '                                                  using `az configure --defaults')
            fprintf('%s\n', '                                                  location=<location>`.')
            fprintf('%s\n', '    --resource-group -g              [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', '    --sas-uri                        [Required] : The SAS Uri to the Azure Storage container where')
            fprintf('%s\n', '                                                  the artifacts are stored.')
            fprintf('%s\n', '    --artifact-root                             : The root folder under which the artifacts are to')
            fprintf('%s\n', '                                                  be found. This is the path relative to the Azure')
            fprintf('%s\n', '                                                  storage container provided in --sas-uri.')
            fprintf('%s\n', '    --tags                                      : Space-separated tags: key[=value] [key[=value]')
            fprintf('%s\n', '                                                  ...]. Use '''' to clear existing tags.')
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
            fprintf('%s\n', '    Create a new artifact source.')
            fprintf('%s\n', '        az deploymentmanager artifact-source create -g rg1 -n contosoServiceArtifactSource -l')
            fprintf('%s\n', '        location --sas-uri https://myStorageAct.blob.azure.com/artifacts?st=2019-04-10T22%3A12Z&se=2')
            fprintf('%s\n', '        019-04-11T09%3A12Z&sp=rl&sv=2018-03-28&sr=c&sig=f6Nx8en4sIJQryYFVVj%2B5BdU7bho96jAgOzLO40Twk')
            fprintf('%s\n', '        g%3D')
            fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager artifact-source create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
