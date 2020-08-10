classdef add_to_group < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add_to_group()
            % az sql vm add-to-group : Adds SQL virtual machine to a SQL virtual machine group.
            % Command group 'sql vm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql vm add-to-group ';
        end
        function this = sqlvm_group(this, varargin)
            % Name or resource ID of the SQL virtual machine group. If only name provided, SQL virtual machine group should be in the same resource group of the SQL virtual machine.
            this.Options = [this.Options, '--sqlvm-group', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the SQL virtual machine.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. WSFC Domain Credentials Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = bootstrap_acc_pwd(this, varargin)
            % Password for the cluster bootstrap account if provided in the SQL virtual machine group.
            this.Options = [this.Options, '--bootstrap-acc-pwd', varargin{:}];
        end

        function this = operator_acc_pwd(this, varargin)
            % Password for the cluster operator account provided in the SQL virtual machine group.
            this.Options = [this.Options, '--operator-acc-pwd', varargin{:}];
        end

        function this = service_acc_pwd(this, varargin)
            % Password for the SQL service account provided in the SQL virtual machine group.
            this.Options = [this.Options, '--service-acc-pwd', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql vm add-to-group : Adds SQL virtual machine to a SQL virtual machine group.')
            fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --sqlvm-group -r [Required] : Name or resource ID of the SQL virtual machine group. If only name')
            fprintf('%s\n', '                                  provided, SQL virtual machine group should be in the same resource')
            fprintf('%s\n', '                                  group of the SQL virtual machine.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --name -n                   : Name of the SQL virtual machine.')
            fprintf('%s\n', '    --resource-group -g         : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                  `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'WSFC Domain Credentials Arguments')
            fprintf('%s\n', '    --bootstrap-acc-pwd -b      : Password for the cluster bootstrap account if provided in the SQL')
            fprintf('%s\n', '                                  virtual machine group.')
            fprintf('%s\n', '    --operator-acc-pwd -p       : Password for the cluster operator account provided in the SQL')
            fprintf('%s\n', '                                  virtual machine group.')
            fprintf('%s\n', '    --service-acc-pwd -s        : Password for the SQL service account provided in the SQL virtual')
            fprintf('%s\n', '                                  machine group.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add SQL virtual machine to a group.')
            fprintf('%s\n', '        az sql vm add-to-group -n sqlvm -g myresourcegroup --sqlvm-group sqlvmgroup --bootstrap-acc-')
            fprintf('%s\n', '        pwd {bootstrappassword} --operator-acc-pwd {operatorpassword} --service-acc-pwd')
            fprintf('%s\n', '        {servicepassword}')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql vm add-to-group"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add_to_group 
