classdef tag < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = tag()
            % az resource tag : Tag a resource.
            this.BaseCmd = 'az resource tag ';
        end
        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = is_incremental(this, varargin)
            % The option to add tags incrementally without deleting the original tags. If the key of new tag and original tag are duplicated, the original value will be overwritten.
            this.Options = [this.Options, '--is-incremental', varargin{:}];
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

        function this = api_version(this, varargin)
            % The api version of the resource (omit for latest).
            this.Options = [this.Options, '--api-version', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). If provided, no other "Resource Id" arguments should be specified.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The resource name. (Ex: myC).
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Provider namespace (Ex: 'Microsoft.Provider').
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = parent(this, varargin)
            % The parent path (Ex: 'resA/myA/resB/myB').
            this.Options = [this.Options, '--parent', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % The resource type (Ex: 'resC'). Can also accept namespace/type format (Ex: 'Microsoft.Provider/resC').
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az resource tag : Tag a resource.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --tags   [Required] : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                          existing tags.')
            fprintf('%s\n', '    --is-incremental -i : The option to add tags incrementally without deleting the original tags.')
            fprintf('%s\n', '                          If the key of new tag and original tag are duplicated, the original value')
            fprintf('%s\n', '                          will be overwritten.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --api-version       : The api version of the resource (omit for latest).')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). If provided, no other')
            fprintf('%s\n', '                          "Resource Id" arguments should be specified.')
            fprintf('%s\n', '    --name -n           : The resource name. (Ex: myC).')
            fprintf('%s\n', '    --namespace         : Provider namespace (Ex: ''Microsoft.Provider'').')
            fprintf('%s\n', '    --parent            : The parent path (Ex: ''resA/myA/resB/myB'').')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-type     : The resource type (Ex: ''resC''). Can also accept namespace/type format (Ex:')
            fprintf('%s\n', '                          ''Microsoft.Provider/resC'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Tag the virtual machine ''MyVm'' with the key ''vmlist'' and value ''vm1''.')
            fprintf('%s\n', '        az resource tag --tags vmlist=vm1 -g MyResourceGroup -n MyVm --resource-type')
            fprintf('%s\n', '        "Microsoft.Compute/virtualMachines"')
            fprintf('%s\n', '    Tag a web app with the key ''vmlist'' and value ''vm1'', using a resource identifier.')
            fprintf('%s\n', '        az resource tag --tags vmlist=vm1 --ids')
            fprintf('%s\n', '        /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/Microsoft.Web/sites/{WebApp}')
            fprintf('%s\n', '    Tag the virtual machine ''MyVm'' with the key ''vmlist'' and value ''vm1'' incrementally. It doesn''t')
            fprintf('%s\n', '    empty the existing tags.')
            fprintf('%s\n', '        az resource tag --tags vmlist=vm1 -g MyResourceGroup -n MyVm --resource-type')
            fprintf('%s\n', '        "Microsoft.Compute/virtualMachines" -i')
            fprintf('%s\n', 'For more specific examples, use: az find "az resource tag"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class tag 
