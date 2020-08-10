classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dms project create : Create a migration Project which can contain multiple Tasks.
            this.BaseCmd = 'az dms project create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the Project.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_name(this, varargin)
            % The name of the Service.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = source_platform(this, varargin)
            % The type of server for the source database. The supported types are: SQL.
            this.Options = [this.Options, '--source-platform', varargin{:}];
        end

        function this = target_platform(this, varargin)
            % The type of service for the target database. The supported types are: SQLDB.
            this.Options = [this.Options, '--target-platform', varargin{:}];
        end

        function this = tags(this, varargin)
            % A space-delimited list of tags in "tag1[=value1]" format.
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
            fprintf('%s\n', '    az dms project create : Create a migration Project which can contain multiple Tasks.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the Project.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name      [Required] : The name of the Service.')
            fprintf('%s\n', '    --source-platform   [Required] : The type of server for the source database. The supported types')
            fprintf('%s\n', '                                     are: SQL.')
            fprintf('%s\n', '    --target-platform   [Required] : The type of service for the target database. The supported')
            fprintf('%s\n', '                                     types are: SQLDB.')
            fprintf('%s\n', '    --tags                         : A space-delimited list of tags in "tag1[=value1]" format.')
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
            fprintf('%s\n', '    Create a Project for a DMS instance.')
            fprintf('%s\n', '        az dms project create -l westus -n myproject -g myresourcegroup --service-name mydms')
            fprintf('%s\n', '        --source-platform SQL --target-platform SQLDB --tags tagName1=tagValue1 tagWithNoValue')
            fprintf('%s\n', 'For more specific examples, use: az find "az dms project create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
