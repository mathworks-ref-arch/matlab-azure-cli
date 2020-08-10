classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az hdinsight application create : Create an application for a HDInsight cluster.
            this.BaseCmd = 'az hdinsight application create ';
        end
        function this = cluster_name(this, varargin)
            % The name of the cluster.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The constant value for the application name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = marketplace_id(this, varargin)
            % The marketplace identifier.
            this.Options = [this.Options, '--marketplace-id', varargin{:}];
        end

        function this = no_validation_timeout(this, varargin)
            % Permit timeout error during argument validation phase. If omitted, validation timeout error will be permitted.
            this.Options = [this.Options, '--no-validation-timeout', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = type(this, varargin)
            % The application type.  Allowed values: CustomApplication, RServer.  Default: CustomApplication. HTTPS Endpoint Arguments
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = access_mode(this, varargin)
            % The access mode for the application.  Default: WebPage.
            this.Options = [this.Options, '--access-mode', varargin{:}];
        end

        function this = destination_port(this, varargin)
            % The destination port to connect to.  Default: 8080.
            this.Options = [this.Options, '--destination-port', varargin{:}];
        end

        function this = disable_gateway_auth(this, varargin)
            % Indicates whether to disable gateway authentication. Default is to enable gateway authentication. Default: false.  Allowed values: false, true.
            this.Options = [this.Options, '--disable-gateway-auth', varargin{:}];
        end

        function this = sub_domain_suffix(this, varargin)
            % The subdomain suffix of the application. Network Arguments
            this.Options = [this.Options, '--sub-domain-suffix', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name or ID of subnet. If name is supplied, `--vnet-name` must be supplied.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The name of a virtual network. Node Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = edgenode_size(this, varargin)
            % The size of the node. See also: https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop- provision-linux-clusters#configure-cluster-size.  Default: Standard_D3_V2. SSH Arguments
            this.Options = [this.Options, '--edgenode-size', varargin{:}];
        end

        function this = ssh_password(this, varargin)
            % SSH password for the cluster nodes.
            this.Options = [this.Options, '--ssh-password', varargin{:}];
        end

        function this = ssh_public_key(this, varargin)
            % SSH public key for the cluster nodes.
            this.Options = [this.Options, '--ssh-public-key', varargin{:}];
        end

        function this = ssh_user(this, varargin)
            % SSH username for the cluster nodes.  Default: sshuser. Script Action Arguments
            this.Options = [this.Options, '--ssh-user', varargin{:}];
        end

        function this = script_action_name(this, varargin)
            % The name of the script action.
            this.Options = [this.Options, '--script-action-name', varargin{:}];
        end

        function this = script_uri(this, varargin)
            % The URI to the script.
            this.Options = [this.Options, '--script-uri', varargin{:}];
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
            fprintf('%s\n', '    az hdinsight application create : Create an application for a HDInsight cluster.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name       [Required] : The name of the cluster.')
            fprintf('%s\n', '    --name -n            [Required] : The constant value for the application name.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --marketplace-id                : The marketplace identifier.')
            fprintf('%s\n', '    --no-validation-timeout         : Permit timeout error during argument validation phase. If')
            fprintf('%s\n', '                                      omitted, validation timeout error will be permitted.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', '    --type -t                       : The application type.  Allowed values: CustomApplication,')
            fprintf('%s\n', '                                      RServer.  Default: CustomApplication.')
            fprintf('%s\n', 'HTTPS Endpoint Arguments')
            fprintf('%s\n', '    --access-mode                   : The access mode for the application.  Default: WebPage.')
            fprintf('%s\n', '    --destination-port              : The destination port to connect to.  Default: 8080.')
            fprintf('%s\n', '    --disable-gateway-auth          : Indicates whether to disable gateway authentication. Default')
            fprintf('%s\n', '                                      is to enable gateway authentication. Default: false.  Allowed')
            fprintf('%s\n', '                                      values: false, true.')
            fprintf('%s\n', '    --sub-domain-suffix             : The subdomain suffix of the application.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --subnet                        : The name or ID of subnet. If name is supplied, `--vnet-name`')
            fprintf('%s\n', '                                      must be supplied.')
            fprintf('%s\n', '    --vnet-name                     : The name of a virtual network.')
            fprintf('%s\n', 'Node Arguments')
            fprintf('%s\n', '    --edgenode-size                 : The size of the node. See also:')
            fprintf('%s\n', '                                      https://docs.microsoft.com/azure/hdinsight/hdinsight-hadoop-')
            fprintf('%s\n', '                                      provision-linux-clusters#configure-cluster-size.  Default:')
            fprintf('%s\n', '                                      Standard_D3_V2.')
            fprintf('%s\n', 'SSH Arguments')
            fprintf('%s\n', '    --ssh-password -P               : SSH password for the cluster nodes.')
            fprintf('%s\n', '    --ssh-public-key -K             : SSH public key for the cluster nodes.')
            fprintf('%s\n', '    --ssh-user -U                   : SSH username for the cluster nodes.  Default: sshuser.')
            fprintf('%s\n', 'Script Action Arguments')
            fprintf('%s\n', '    --script-action-name [Required] : The name of the script action.')
            fprintf('%s\n', '    --script-uri         [Required] : The URI to the script.')
            fprintf('%s\n', '    --script-parameters             : The parameters for the script.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an application with a script URI.')
            fprintf('%s\n', '        az hdinsight application create -g MyResourceGroup -n MyApplication \')
            fprintf('%s\n', '        --cluster-name MyCluster \')
            fprintf('%s\n', '        --script-uri https://hdiconfigactions.blob.core.windows.net/linuxhueconfigactionv02/install-')
            fprintf('%s\n', '        hue-uber-v02.sh \')
            fprintf('%s\n', '        --script-action-name MyScriptAction \')
            fprintf('%s\n', '        --script-parameters ''"-version latest -port 20000"''')
            fprintf('%s\n', '    Create an application with a script URI and specified edge node size.')
            fprintf('%s\n', '        az hdinsight application create -g MyResourceGroup -n MyApplication \')
            fprintf('%s\n', '        --cluster-name MyCluster \')
            fprintf('%s\n', '        --script-uri https://hdiconfigactions.blob.core.windows.net/linuxhueconfigactionv02/install-')
            fprintf('%s\n', '        hue-uber-v02.sh \')
            fprintf('%s\n', '        --script-action-name MyScriptAction \')
            fprintf('%s\n', '        --script-parameters "-version latest -port 20000" \')
            fprintf('%s\n', '        --edgenode-size Standard_D4_v2')
            fprintf('%s\n', '    Create an application with HTTPS Endpoint.')
            fprintf('%s\n', '        az hdinsight application create -g MyResourceGroup -n MyApplication \')
            fprintf('%s\n', '        --cluster-name MyCluster \')
            fprintf('%s\n', '        --script-uri https://hdiconfigactions.blob.core.windows.net/linuxhueconfigactionv02/install-')
            fprintf('%s\n', '        hue-uber-v02.sh \')
            fprintf('%s\n', '        --script-action-name MyScriptAction \')
            fprintf('%s\n', '        --script-parameters "-version latest -port 20000" \')
            fprintf('%s\n', '        --destination-port 8888 \')
            fprintf('%s\n', '        --sub-domain-suffix was')
            fprintf('%s\n', 'For more specific examples, use: az find "az hdinsight application create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
