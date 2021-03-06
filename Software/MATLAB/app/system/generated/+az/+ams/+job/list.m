classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az ams job list : List all the jobs of a transform within an Azure Media Services account.
            this.BaseCmd = 'az ams job list ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = transform_name(this, varargin)
            % The name of the transform.
            this.Options = [this.Options, '--transform-name', varargin{:}];
        end

        function this = filter(this, varargin)
            % Restricts the set of items returned.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = orderby(this, varargin)
            % Specifies the key by which the result collection should be ordered.
            this.Options = [this.Options, '--orderby', varargin{:}];
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
            fprintf('%s\n', '    az ams job list : List all the jobs of a transform within an Azure Media Services account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --transform-name -t [Required] : The name of the transform.')
            fprintf('%s\n', '    --filter                       : Restricts the set of items returned.')
            fprintf('%s\n', '    --orderby                      : Specifies the key by which the result collection should be')
            fprintf('%s\n', '                                     ordered.')
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
            fprintf('%s\n', '    List all the jobs of a transform with ''Normal'' priority by name.')
            fprintf('%s\n', '        az ams job list -a amsAccount -g resourceGroup -t transformName --query')
            fprintf('%s\n', '        [?priority==''Normal''].{jobName:name}')
            fprintf('%s\n', '    List all the jobs of a transform by name and input.')
            fprintf('%s\n', '        az ams job list -a amsAccount -g resourceGroup -t transformName --query')
            fprintf('%s\n', '        [].{jobName:name,jobInput:input}')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams job list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
