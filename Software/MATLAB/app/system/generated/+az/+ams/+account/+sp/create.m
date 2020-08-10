classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams account sp create : Create or update a service principal and configure its access to an
            % Azure Media Services account.
            % Service principal propagation throughout Azure Active Directory may take some extra seconds
            % to complete.
            this.BaseCmd = 'az ams account sp create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = name(this, varargin)
            % The app name or app URI to associate the RBAC with. If not present, a default name like '{amsaccountname}-access-sp' will be generated.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = new_sp_name(this, varargin)
            % The new app name or app URI to update the RBAC with.
            this.Options = [this.Options, '--new-sp-name', varargin{:}];
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
            fprintf('%s\n', '    az ams account sp create : Create or update a service principal and configure its access to an')
            fprintf('%s\n', '    Azure Media Services account.')
            fprintf('%s\n', '        Service principal propagation throughout Azure Active Directory may take some extra seconds')
            fprintf('%s\n', '        to complete.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --name -n                      : The app name or app URI to associate the RBAC with. If not')
            fprintf('%s\n', '                                     present, a default name like ''{amsaccountname}-access-sp'' will')
            fprintf('%s\n', '                                     be generated.')
            fprintf('%s\n', '    --new-sp-name                  : The new app name or app URI to update the RBAC with.')
            fprintf('%s\n', '    --password -p                  : The password used to log in. Also known as ''Client Secret''. If')
            fprintf('%s\n', '                                     not present, a random secret will be generated.')
            fprintf('%s\n', '    --role                         : The role of the service principal.  Default: Contributor.')
            fprintf('%s\n', '    --xml                          : Enables xml output format.')
            fprintf('%s\n', '    --years                        : Number of years for which the secret will be valid. Default: 1')
            fprintf('%s\n', '                                     year.')
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
            fprintf('%s\n', '    Create a service principal with password and configure its access to an Azure Media Services')
            fprintf('%s\n', '    account. Output will be in xml format.')
            fprintf('%s\n', '        az ams account sp create -a myAmsAccount -g myRG -n mySpName --password mySecret --role')
            fprintf('%s\n', '        Owner --xml')
            fprintf('%s\n', '    Update a service principal with a new role and new name.')
            fprintf('%s\n', '        az ams account sp create -a myAmsAccount -g myRG -n mySpName --new-sp-name myNewSpName')
            fprintf('%s\n', '        --role newRole')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams account sp create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
