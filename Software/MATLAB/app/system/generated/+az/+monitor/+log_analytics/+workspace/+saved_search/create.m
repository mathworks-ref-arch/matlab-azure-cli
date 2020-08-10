classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor log-analytics workspace saved-search create : Create a saved search for a given
            % workspace.
            this.BaseCmd = 'az monitor log-analytics workspace saved-search create ';
        end
        function this = category(this, varargin)
            % The category of the saved search. This helps the user to find a saved search faster.
            this.Options = [this.Options, '--category', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Display name of the saved search.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the saved search and it's unique in a given workspace.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = saved_query(this, varargin)
            % The query expression for the saved search.
            this.Options = [this.Options, '--saved-query', varargin{:}];
        end

        function this = workspace_name(this, varargin)
            % Name of the Log Analytics Workspace.
            this.Options = [this.Options, '--workspace-name', varargin{:}];
        end

        function this = fa(this, varargin)
            % Function Aliases are short names given to Saved Searches so they can be easily referenced in query. They are required for Computer Groups.
            this.Options = [this.Options, '--fa', varargin{:}];
        end

        function this = fp(this, varargin)
            % The optional function parameters if query serves as a function. Value should be in the following format: 'param-name1:type1 = default_value1, param-name2:type2 = default_value2'. For more examples and proper syntax please refer to https://docs.microsoft.com/en- us/azure/kusto/query/functions/user-defined-functions.
            this.Options = [this.Options, '--fp', varargin{:}];
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
            fprintf('%s\n', '    az monitor log-analytics workspace saved-search create : Create a saved search for a given')
            fprintf('%s\n', '    workspace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --category          [Required] : The category of the saved search. This helps the user to find a')
            fprintf('%s\n', '                                     saved search faster.')
            fprintf('%s\n', '    --display-name      [Required] : Display name of the saved search.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the saved search and it''s unique in a given workspace.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --saved-query -q    [Required] : The query expression for the saved search.')
            fprintf('%s\n', '    --workspace-name    [Required] : Name of the Log Analytics Workspace.')
            fprintf('%s\n', '    --fa --func-alias              : Function Aliases are short names given to Saved Searches so')
            fprintf('%s\n', '                                     they can be easily referenced in query. They are required for')
            fprintf('%s\n', '                                     Computer Groups.')
            fprintf('%s\n', '    --fp --func-param              : The optional function parameters if query serves as a function.')
            fprintf('%s\n', '                                     Value should be in the following format: ''param-name1:type1 =')
            fprintf('%s\n', '                                     default_value1, param-name2:type2 = default_value2''. For more')
            fprintf('%s\n', '                                     examples and proper syntax please refer to')
            fprintf('%s\n', '                                     https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                     us/azure/kusto/query/functions/user-defined-functions.')
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
            fprintf('%s\n', '    Create a saved search for a given workspace.')
            fprintf('%s\n', '        az monitor log-analytics workspace saved-search create -g MyRG --workspace-name MyWS -n')
            fprintf('%s\n', '        MySavedSearch --category Test1 --display-name TestSavedSearch -q "AzureActivity | summarize')
            fprintf('%s\n', '        count() by bin(timestamp, 1h)" --fa myfun --fp "a:string = value"')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics workspace saved-search')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
