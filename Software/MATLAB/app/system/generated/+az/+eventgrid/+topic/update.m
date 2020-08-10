classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az eventgrid topic update : Update a topic.
            this.BaseCmd = 'az eventgrid topic update ';
        end
        function this = identity(this, varargin)
            % The identity type of the resource (e.g., topic or domain). Allowed values: noidentity, systemassigned. Argument '--identity' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--identity', varargin{:}];
        end

        function this = inbound_ip_rules(this, varargin)
            % List of inbound IP rules specifying IP Address in CIDR notation e.g., 10.0.0.0/8 along with corresponding Action to perform based on the match or no match of the IpMask. List of inbound IP rules specifying IP Address in CIDR notation e.g., 10.0.0.0/8 along with corresponding Action to perform based on the match or no match of the IpMask. Possible values include - Allow.
            this.Options = [this.Options, '--inbound-ip-rules', varargin{:}];
        end

        function this = public_network_access(this, varargin)
            % This determines if traffic is allowed over public network. By default it is enabled. You can further restrict to specific IPs by configuring.  Allowed values: disabled, enabled.
            this.Options = [this.Options, '--public-network-access', varargin{:}];
        end

        function this = sku(this, varargin)
            % The Sku name of the resource.  Allowed values: basic, premium. Argument '--sku' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--sku', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the topic.
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
            fprintf('%s\n', '    az eventgrid topic update : Update a topic.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --identity    [Preview] : The identity type of the resource (e.g., topic or domain).')
            fprintf('%s\n', '                              Allowed values: noidentity, systemassigned.')
            fprintf('%s\n', '        Argument ''--identity'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --inbound-ip-rules      : List of inbound IP rules specifying IP Address in CIDR notation e.g.,')
            fprintf('%s\n', '                              10.0.0.0/8 along with corresponding Action to perform based on the')
            fprintf('%s\n', '                              match or no match of the IpMask.')
            fprintf('%s\n', '        List of inbound IP rules specifying IP Address in CIDR notation e.g., 10.0.0.0/8 along with')
            fprintf('%s\n', '        corresponding Action to perform based on the match or no match of the IpMask. Possible')
            fprintf('%s\n', '        values include - Allow.')
            fprintf('%s\n', '    --public-network-access : This determines if traffic is allowed over public network. By default')
            fprintf('%s\n', '                              it is enabled. You can further restrict to specific IPs by')
            fprintf('%s\n', '                              configuring.  Allowed values: disabled, enabled.')
            fprintf('%s\n', '    --sku         [Preview] : The Sku name of the resource.  Allowed values: basic,')
            fprintf('%s\n', '                              premium.')
            fprintf('%s\n', '        Argument ''--sku'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', '    --tags                  : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                              existing tags.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : Name of the topic.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the properties of an existing topic with new sku, identity and public network access')
            fprintf('%s\n', '    information.')
            fprintf('%s\n', '        az eventgrid topic update -g rg1 --name topic1 --sku Premium --identity systemassigned')
            fprintf('%s\n', '        --public-network-access enabled --inbound-ip-rules 10.0.0.0/8 Allow --inbound-ip-rules')
            fprintf('%s\n', '        10.2.0.0/8 Allow --tags Dept=IT --sku basic')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid topic update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
