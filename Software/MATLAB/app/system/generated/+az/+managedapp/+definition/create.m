classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az managedapp definition create : Create a managed application definition.
            this.BaseCmd = 'az managedapp definition create ';
        end
        function this = authorizations(this, varargin)
            % Space-separated authorization pairs in a format of `<principalId>:<roleDefinitionId>`.
            this.Options = [this.Options, '--authorizations', varargin{:}];
        end

        function this = description(this, varargin)
            % The managed application definition description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = display_name(this, varargin)
            % The managed application definition display name.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = lock_level(this, varargin)
            % The type of lock restriction.  Allowed values: CanNotDelete, None, ReadOnly.
            this.Options = [this.Options, '--lock-level', varargin{:}];
        end

        function this = name(this, varargin)
            % The managed application definition name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % The resource group of the managed application definition.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = create_ui_definition(this, varargin)
            % The managed application definition create ui definition.
            this.Options = [this.Options, '--create-ui-definition', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = main_template(this, varargin)
            % The managed application definition main template.
            this.Options = [this.Options, '--main-template', varargin{:}];
        end

        function this = package_file_uri(this, varargin)
            % The managed application definition package file uri.
            this.Options = [this.Options, '--package-file-uri', varargin{:}];
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
            fprintf('%s\n', '    az managedapp definition create : Create a managed application definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --authorizations -a [Required] : Space-separated authorization pairs in a format of')
            fprintf('%s\n', '                                     `<principalId>:<roleDefinitionId>`.')
            fprintf('%s\n', '    --description       [Required] : The managed application definition description.')
            fprintf('%s\n', '    --display-name      [Required] : The managed application definition display name.')
            fprintf('%s\n', '    --lock-level        [Required] : The type of lock restriction.  Allowed values: CanNotDelete,')
            fprintf('%s\n', '                                     None, ReadOnly.')
            fprintf('%s\n', '    --name -n           [Required] : The managed application definition name.')
            fprintf('%s\n', '    --resource-group -g [Required] : The resource group of the managed application definition.')
            fprintf('%s\n', '    --create-ui-definition         : The managed application definition create ui definition.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --main-template                : The managed application definition main template.')
            fprintf('%s\n', '    --package-file-uri             : The managed application definition package file uri.')
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
            fprintf('%s\n', '    Create a managed application defintion.')
            fprintf('%s\n', '        az managedapp definition create -g MyResourceGroup -n MyManagedAppDef -l eastus --display-')
            fprintf('%s\n', '        name "MyManagedAppDef" \')
            fprintf('%s\n', '            --description "My Managed App Def description" -a "myPrincipalId:myRoleId" --lock-level')
            fprintf('%s\n', '        None \')
            fprintf('%s\n', '            --package-file-uri "https://path/to/myPackage.zip"')
            fprintf('%s\n', '    Create a managed application defintion with inline values for createUiDefinition and')
            fprintf('%s\n', '    mainTemplate.')
            fprintf('%s\n', '        az managedapp definition create -g MyResourceGroup -n MyManagedAppDef -l eastus --display-')
            fprintf('%s\n', '        name "MyManagedAppDef" \')
            fprintf('%s\n', '            --description "My Managed App Def description" -a "myPrincipalId:myRoleId" --lock-level')
            fprintf('%s\n', '        None \')
            fprintf('%s\n', '            --create-ui-definition @myCreateUiDef.json --main-template @myMainTemplate.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az managedapp definition create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
