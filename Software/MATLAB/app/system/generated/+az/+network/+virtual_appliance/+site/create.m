classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network virtual-appliance site create : Create an Azure network virtual appliance site.
            % Command group 'network virtual-appliance site' is in preview. It may be changed/removed
            % in a future release.
            this.BaseCmd = 'az network virtual-appliance site create ';
        end
        function this = address_prefix(this, varargin)
            % Address Prefix of Network Virtual Appliance Site.
            this.Options = [this.Options, '--address-prefix', varargin{:}];
        end

        function this = appliance_name(this, varargin)
            % The name of Network Virtual Appliance.
            this.Options = [this.Options, '--appliance-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of Network Virtual Appliance Site.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`. Breakout of O365 Arguments
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = allow(this, varargin)
            % Flag to control breakout of o365 allow category.  Allowed values: false, true.
            this.Options = [this.Options, '--allow', varargin{:}];
        end

        function this = default(this, varargin)
            % Flag to control breakout of o365 default category.  Allowed values: false, true.
            this.Options = [this.Options, '--default', varargin{:}];
        end

        function this = optimize(this, varargin)
            % Flag to control breakout of o365 optimize category.  Allowed values: false, true.
            this.Options = [this.Options, '--optimize', varargin{:}];
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
            fprintf('%s\n', '    az network virtual-appliance site create : Create an Azure network virtual appliance site.')
            fprintf('%s\n', '        Command group ''network virtual-appliance site'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-prefix    [Required] : Address Prefix of Network Virtual Appliance Site.')
            fprintf('%s\n', '    --appliance-name    [Required] : The name of Network Virtual Appliance.')
            fprintf('%s\n', '    --name -n           [Required] : The name of Network Virtual Appliance Site.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Breakout of O365 Arguments')
            fprintf('%s\n', '    --allow                        : Flag to control breakout of o365 allow category.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --default                      : Flag to control breakout of o365 default category.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --optimize                     : Flag to control breakout of o365 optimize category.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
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
            fprintf('%s\n', '    Create an Azure network virtual appliance site.')
            fprintf('%s\n', '        az network virtual-appliance site create -n MyName -g MyRG --appliance-name MyAppliance')
            fprintf('%s\n', '        --address-prefix 10.0.0.0/24 --allow --default --optimize')
            fprintf('%s\n', 'For more specific examples, use: az find "az network virtual-appliance site create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
