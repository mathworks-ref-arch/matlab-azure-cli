classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az bot authsetting create : Create an OAuth connection setting on a bot.
            this.BaseCmd = 'az bot authsetting create ';
        end
        function this = client_id(this, varargin)
            % Client ID associated with the service provider setting.
            this.Options = [this.Options, '--client-id', varargin{:}];
        end

        function this = client_secret(this, varargin)
            % Client secret associated with the service provider setting.
            this.Options = [this.Options, '--client-secret', varargin{:}];
        end

        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = provider_scope_string(this, varargin)
            % The scope string associated with the service provider setting.The string should be delimited as needed for the service provider.
            this.Options = [this.Options, '--provider-scope-string', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service(this, varargin)
            % Name of the service provider. For a list of all service providers, use `az bot connection listserviceproviders`.
            this.Options = [this.Options, '--service', varargin{:}];
        end

        function this = setting_name(this, varargin)
            % Name of the oauth connection setting.
            this.Options = [this.Options, '--setting-name', varargin{:}];
        end

        function this = parameters(this, varargin)
            % Parameter values for service provider parameters. Usage: --parameters key=value key1=value1.
            this.Options = [this.Options, '--parameters', varargin{:}];
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
            fprintf('%s\n', '    az bot authsetting create : Create an OAuth connection setting on a bot.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --client-id             [Required] : Client ID associated with the service provider setting.')
            fprintf('%s\n', '    --client-secret         [Required] : Client secret associated with the service provider setting.')
            fprintf('%s\n', '    --name -n               [Required] : The resource name of the bot. Bot name must be between 4')
            fprintf('%s\n', '                                         and 42 characters in length. Bot name can only have the')
            fprintf('%s\n', '                                         following characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --provider-scope-string [Required] : The scope string associated with the service provider')
            fprintf('%s\n', '                                         setting.The string should be delimited as needed for the')
            fprintf('%s\n', '                                         service provider.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service               [Required] : Name of the service provider. For a list of all service')
            fprintf('%s\n', '                                         providers, use `az bot connection listserviceproviders`.')
            fprintf('%s\n', '    --setting-name -c       [Required] : Name of the oauth connection setting.')
            fprintf('%s\n', '    --parameters                       : Parameter values for service provider parameters. Usage:')
            fprintf('%s\n', '                                         --parameters key=value key1=value1.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new OAuth connection setting on a bot.')
            fprintf('%s\n', '        az bot authsetting create -g MyResourceGroup -n botName -c myConnectionName \')
            fprintf('%s\n', '        --client-id clientId --client-secret secret --provider-scope-string "scope1 scope2"\')
            fprintf('%s\n', '        --service google --parameters id=myid')
            fprintf('%s\n', 'For more specific examples, use: az find "az bot authsetting create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
