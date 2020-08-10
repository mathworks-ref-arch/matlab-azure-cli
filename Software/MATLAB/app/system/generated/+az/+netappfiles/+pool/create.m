classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az netappfiles pool create : Create a new Azure NetApp Files (ANF) pool.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles pool create ';
        end
        function this = account_name(this, varargin)
            % The name of the ANF account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the ANF pool.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_level(this, varargin)
            % The service level for the ANF pool.  Allowed values: Premium, Standard, Ultra.
            this.Options = [this.Options, '--service-level', varargin{:}];
        end

        function this = size_(this, varargin)
            % The size for the ANF pool. Must be an integer number of tebibytes in multiples of 4.
            this.Options = [this.Options, '--size', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags in `key[=value]` format.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az netappfiles pool create : Create a new Azure NetApp Files (ANF) pool.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a        [Required] : The name of the ANF account.')
            fprintf('%s\n', '    --location -l            [Required] : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                          can configure the default location using `az configure')
            fprintf('%s\n', '                                          --defaults location=<location>`.')
            fprintf('%s\n', '    --name --pool-name -n -p [Required] : The name of the ANF pool.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-level          [Required] : The service level for the ANF pool.  Allowed values:')
            fprintf('%s\n', '                                          Premium, Standard, Ultra.')
            fprintf('%s\n', '    --size                   [Required] : The size for the ANF pool. Must be an integer number of')
            fprintf('%s\n', '                                          tebibytes in multiples of 4.')
            fprintf('%s\n', '    --tags                              : Space-separated tags in `key[=value]` format.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an ANF pool')
            fprintf('%s\n', '        az netappfiles pool create -g mygroup --account-name myaccountname --name mypoolname -l')
            fprintf('%s\n', '        westus2 --size 8 --service-level premium')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles pool create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
