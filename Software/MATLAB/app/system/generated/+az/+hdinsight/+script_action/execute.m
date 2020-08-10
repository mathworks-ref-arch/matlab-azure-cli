classdef execute < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = execute()
            % az hdinsight script-action execute : Execute script actions on the specified HDInsight cluster.
            this.BaseCmd = 'az hdinsight script-action execute ';
        end
        function this = cluster_name(this, varargin)
            % The name of the cluster.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the script action.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = roles(this, varargin)
            % A space-delimited list of roles (nodes) where the script will be executed. Valid roles are headnode, workernode, zookeepernode, edgenode.
            this.Options = [this.Options, '--roles', varargin{:}];
        end

        function this = script_uri(this, varargin)
            % The URI to the script.
            this.Options = [this.Options, '--script-uri', varargin{:}];
        end

        function this = persist_on_success(this, varargin)
            % If the scripts needs to be persisted.
            this.Options = [this.Options, '--persist-on-success', varargin{:}];
        end

        function this = script_parameters(this, varargin)
            % The parameters for the script.
            this.Options = [this.Options, '--script-parameters', varargin{:}];
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
            fprintf('%s\n', '    az hdinsight script-action execute : Execute script actions on the specified HDInsight cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name      [Required] : The name of the cluster.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the script action.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --roles             [Required] : A space-delimited list of roles (nodes) where the script will')
            fprintf('%s\n', '                                     be executed. Valid roles are headnode, workernode,')
            fprintf('%s\n', '                                     zookeepernode, edgenode.')
            fprintf('%s\n', '    --script-uri        [Required] : The URI to the script.')
            fprintf('%s\n', '    --persist-on-success           : If the scripts needs to be persisted.')
            fprintf('%s\n', '    --script-parameters            : The parameters for the script.')
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
            fprintf('%s\n', '    Execute a script action and persist on success.')
            fprintf('%s\n', '        az hdinsight script-action execute -g MyResourceGroup -n MyScriptActionName \')
            fprintf('%s\n', '        --cluster-name MyCluster \')
            fprintf('%s\n', '        --script-uri')
            fprintf('%s\n', '        https://hdiconfigactions.blob.core.windows.net/linuxgiraphconfigactionv01/giraph-')
            fprintf('%s\n', '        installer-v01.sh \')
            fprintf('%s\n', '        --roles headnode workernode \')
            fprintf('%s\n', '        --persist-on-success')
            fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight script-action execute"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class execute 
