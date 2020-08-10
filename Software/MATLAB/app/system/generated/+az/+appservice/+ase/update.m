classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az appservice ase update : Update app service environment.
            % Command group 'appservice ase' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az appservice ase update ';
        end
        function this = name(this, varargin)
            % Name of the app service environment.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = front_end_scale_factor(this, varargin)
            % Scale of front ends to app service plan instance ratio between 5 and 15.
            this.Options = [this.Options, '--front-end-scale-factor', varargin{:}];
        end

        function this = front_end_sku(this, varargin)
            % Size of front end servers.  Allowed values: I1, I2, I3.
            this.Options = [this.Options, '--front-end-sku', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az appservice ase update : Update app service environment.')
            fprintf('%s\n', '        Command group ''appservice ase'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n     [Required] : Name of the app service environment.')
            fprintf('%s\n', '    --front-end-scale-factor : Scale of front ends to app service plan instance ratio between 5 and')
            fprintf('%s\n', '                               15.')
            fprintf('%s\n', '    --front-end-sku          : Size of front end servers.  Allowed values: I1, I2, I3.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update app service environment with medium front-ends and scale factor of 10.')
            fprintf('%s\n', '        az appservice ase update -n MyAseName -g MyResourceGroup --front-end-sku I2 \')
            fprintf('%s\n', '          --front-end-scale-factor 10')
            fprintf('%s\n', 'For more specific examples, use: az find "az appservice ase update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
