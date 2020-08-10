classdef browse < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = browse()
            % az aks browse : Show the dashboard for a Kubernetes cluster in a web browser.
            this.BaseCmd = 'az aks browse ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = disable_browser(this, varargin)
            % Don't launch a web browser after establishing port-forwarding. Add this argument when launching a web browser manually, or for automated testing.
            this.Options = [this.Options, '--disable-browser', varargin{:}];
        end

        function this = listen_address(this, varargin)
            % The listening address for the dashboard.  Default: 127.0.0.1. Add this argument to listen on a specific IP address.
            this.Options = [this.Options, '--listen-address', varargin{:}];
        end

        function this = listen_port(this, varargin)
            % The listening port for the dashboard.  Default: 8001. Add this argument when the default listening port is used by another process or unavailable.
            this.Options = [this.Options, '--listen-port', varargin{:}];
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
            fprintf('%s\n', '    az aks browse : Show the dashboard for a Kubernetes cluster in a web browser.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --disable-browser              : Don''t launch a web browser after establishing port-forwarding.')
            fprintf('%s\n', '        Add this argument when launching a web browser manually, or for automated testing.')
            fprintf('%s\n', '    --listen-address               : The listening address for the dashboard.  Default: 127.0.0.1.')
            fprintf('%s\n', '        Add this argument to listen on a specific IP address.')
            fprintf('%s\n', '    --listen-port                  : The listening port for the dashboard.  Default: 8001.')
            fprintf('%s\n', '        Add this argument when the default listening port is used by another process or unavailable.')
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
            fprintf('%s\n', '    Show the dashboard for a Kubernetes cluster in a web browser. (autogenerated)')
            fprintf('%s\n', '        az aks browse --name MyManagedCluster --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks browse"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class browse 
