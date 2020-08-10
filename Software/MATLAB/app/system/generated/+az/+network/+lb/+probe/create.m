classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb probe create : Create a probe.
            this.BaseCmd = 'az network lb probe create ';
        end
        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the probe.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = port(this, varargin)
            % The port to interrogate.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The protocol to probe.  Allowed values: Http, Https, Tcp.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = interval(this, varargin)
            % Probing time interval in seconds.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = path(this, varargin)
            % The endpoint to interrogate (http only).
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = threshold(this, varargin)
            % The number of consecutive probe failures before an instance is deemed unhealthy.
            this.Options = [this.Options, '--threshold', varargin{:}];
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
            fprintf('%s\n', '    az network lb probe create : Create a probe.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lb-name           [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the probe.')
            fprintf('%s\n', '    --port              [Required] : The port to interrogate.')
            fprintf('%s\n', '    --protocol          [Required] : The protocol to probe.  Allowed values: Http, Https, Tcp.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --interval                     : Probing time interval in seconds.')
            fprintf('%s\n', '    --path                         : The endpoint to interrogate (http only).')
            fprintf('%s\n', '    --threshold                    : The number of consecutive probe failures before an instance is')
            fprintf('%s\n', '                                     deemed unhealthy.')
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
            fprintf('%s\n', '    Create a probe on a load balancer over HTTP and port 80.')
            fprintf('%s\n', '        az network lb probe create -g MyResourceGroup --lb-name MyLb -n MyProbe \')
            fprintf('%s\n', '            --protocol http --port 80 --path /')
            fprintf('%s\n', '    Create a probe on a load balancer over TCP on port 443.')
            fprintf('%s\n', '        az network lb probe create -g MyResourceGroup --lb-name MyLb -n MyProbe \')
            fprintf('%s\n', '            --protocol tcp --port 443')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb probe create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
