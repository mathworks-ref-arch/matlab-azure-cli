classdef reset_credentials < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = reset_credentials()
            % az ams account sp reset-credentials : Generate a new client secret for a service principal
            % configured for an Azure Media Services account.
            this.BaseCmd = 'az ams account sp reset-credentials ';
        end
        function this = password(this, varargin)
            % The password used to log in. Also known as 'Client Secret'. If not present, a random secret will be generated.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = role(this, varargin)
            % The role of the service principal.  Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = xml(this, varargin)
            % Enables xml output format.
            this.Options = [this.Options, '--xml', varargin{:}];
        end

        function this = years(this, varargin)
            % Number of years for which the secret will be valid. Default: 1 year.
            this.Options = [this.Options, '--years', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams account sp reset-credentials"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The app name or app URI to associate the RBAC with. If not present, a default name like '{amsaccountname}-access-sp' will be generated.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams account sp reset-credentials : Generate a new client secret for a service principal')
            fprintf('%s\n', '    configured for an Azure Media Services account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --password -p       : The password used to log in. Also known as ''Client Secret''. If not')
            fprintf('%s\n', '                          present, a random secret will be generated.')
            fprintf('%s\n', '    --role              : The role of the service principal.  Default: Contributor.')
            fprintf('%s\n', '    --xml               : Enables xml output format.')
            fprintf('%s\n', '    --years             : Number of years for which the secret will be valid. Default: 1 year.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a   : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The app name or app URI to associate the RBAC with. If not present, a')
            fprintf('%s\n', '                          default name like ''{amsaccountname}-access-sp'' will be generated.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams account sp reset-credentials"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class reset_credentials 
