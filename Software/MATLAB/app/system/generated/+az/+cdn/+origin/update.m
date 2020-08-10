classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az cdn origin update : Update an origin.
            this.BaseCmd = 'az cdn origin update ';
        end
        function this = http_port(this, varargin)
            % The port used for http requests to the origin.
            this.Options = [this.Options, '--http-port', varargin{:}];
        end

        function this = https_port(this, varargin)
            % The port used for https requests to the origin.
            this.Options = [this.Options, '--https-port', varargin{:}];
        end

        function this = private_link_approval_message(this, varargin)
            % The message that is shown to the approver of the private link request.
            this.Options = [this.Options, '--private-link-approval-message', varargin{:}];
        end

        function this = private_link_location(this, varargin)
            % The location of the private link that the origin will be connected to.
            this.Options = [this.Options, '--private-link-location', varargin{:}];
        end

        function this = private_link_resource_id(this, varargin)
            % The resource id of the private link that the origin will be connected to.
            this.Options = [this.Options, '--private-link-resource-id', varargin{:}];
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

        function this = endpoint_name(this, varargin)
            % Name of the CDN endpoint.
            this.Options = [this.Options, '--endpoint-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the origin.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of the CDN profile which is unique within the resource group.
            this.Options = [this.Options, '--profile-name', varargin{:}];
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
            fprintf('%s\n', '    az cdn origin update : Update an origin.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --http-port                     : The port used for http requests to the origin.')
            fprintf('%s\n', '    --https-port                    : The port used for https requests to the origin.')
            fprintf('%s\n', '    --private-link-approval-message : The message that is shown to the approver of the private link')
            fprintf('%s\n', '                                      request.')
            fprintf('%s\n', '    --private-link-location         : The location of the private link that the origin will be')
            fprintf('%s\n', '                                      connected to.')
            fprintf('%s\n', '    --private-link-resource-id      : The resource id of the private link that the origin will be')
            fprintf('%s\n', '                                      connected to.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --endpoint-name                 : Name of the CDN endpoint.')
            fprintf('%s\n', '    --ids                           : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                      complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                      Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                      ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                       : Name of the origin.')
            fprintf('%s\n', '    --profile-name                  : Name of the CDN profile which is unique within the resource')
            fprintf('%s\n', '                                      group.')
            fprintf('%s\n', '    --resource-group -g             : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an origin with private link fields')
            fprintf('%s\n', '        az cdn origin update -g group --profile-name profile --endpoint-name endpoint -n origin')
            fprintf('%s\n', '        --http-port 80')
            fprintf('%s\n', '          --https-port 443 --private-link-resource-id')
            fprintf('%s\n', '          /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group/providers/Microso')
            fprintf('%s\n', '        ft.Network/privateLinkServices/pls')
            fprintf('%s\n', '          --private-link-location EastUS --private-link-approval-message ''Please approve this')
            fprintf('%s\n', '        request''')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn origin update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
