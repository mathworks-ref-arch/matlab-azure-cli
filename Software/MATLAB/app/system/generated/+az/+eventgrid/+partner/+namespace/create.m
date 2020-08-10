classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventgrid partner namespace create : Create a partner namespace.
            % Command group 'eventgrid partner namespace' is in preview. It may be changed/removed in
            % a future release.
            this.BaseCmd = 'az eventgrid partner namespace create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the partner namespace.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_registration_id(this, varargin)
            % The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format: /subscriptions/{subscrip tionId}/resourceGroups/{resourceGroupName}/providers/Micr osoft.EventGrid/partnerRegistrations/{partnerRegistration Name}.
            this.Options = [this.Options, '--partner-registration-id', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
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
            fprintf('%s\n', '    az eventgrid partner namespace create : Create a partner namespace.')
            fprintf('%s\n', '        Command group ''eventgrid partner namespace'' is in preview. It may be changed/removed in')
            fprintf('%s\n', '        a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l             [Required] : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                           can configure the default location using `az configure')
            fprintf('%s\n', '                                           --defaults location=<location>`.')
            fprintf('%s\n', '    --name -n                 [Required] : Name of the partner namespace.')
            fprintf('%s\n', '    --partner-registration-id [Required] : The fully qualified ARM Id of the partner registration')
            fprintf('%s\n', '                                           that should be associated with this partner namespace.')
            fprintf('%s\n', '                                           This takes the following format: /subscriptions/{subscrip')
            fprintf('%s\n', '                                           tionId}/resourceGroups/{resourceGroupName}/providers/Micr')
            fprintf('%s\n', '                                           osoft.EventGrid/partnerRegistrations/{partnerRegistration')
            fprintf('%s\n', '                                           Name}.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tags                               : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                           '''' to clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new partner namespace.')
            fprintf('%s\n', '        az eventgrid partner namespace create -g rg1 --name namespaceName1 -l westus2 --partner-')
            fprintf('%s\n', '        registration-id 795c9f2f-6d2d-42ff-a570-42fd3043192c')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner namespace create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
