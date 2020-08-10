classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az webapp update : Update a web app.
            this.BaseCmd = 'az webapp update ';
        end
        function this = client_affinity_enabled(this, varargin)
            % Enables sending session affinity cookies.  Allowed values: false, true.
            this.Options = [this.Options, '--client-affinity-enabled', varargin{:}];
        end

        function this = force_dns_registration(this, varargin)
            % If true, web app hostname is force registered with DNS. Allowed values: false, true.
            this.Options = [this.Options, '--force-dns-registration', varargin{:}];
        end

        function this = https_only(this, varargin)
            % Redirect all traffic made to an app using HTTP to HTTPS. Allowed values: false, true.
            this.Options = [this.Options, '--https-only', varargin{:}];
        end

        function this = skip_custom_domain_verification(this, varargin)
            % If true, custom (non *.azurewebsites.net) domains associated with web app are not verified.  Allowed values: false, true.
            this.Options = [this.Options, '--skip-custom-domain-verification', varargin{:}];
        end

        function this = skip_dns_registration(this, varargin)
            % If true web app hostname is not registered with DNS on creation.  Allowed values: false, true.
            this.Options = [this.Options, '--skip-dns-registration', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = ttl_in_seconds(this, varargin)
            % Time to live in seconds for web app's default domain name. Allowed values: false, true.
            this.Options = [this.Options, '--ttl-in-seconds', varargin{:}];
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
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az webapp update : Update a web app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --client-affinity-enabled         : Enables sending session affinity cookies.  Allowed values:')
            fprintf('%s\n', '                                        false, true.')
            fprintf('%s\n', '    --force-dns-registration          : If true, web app hostname is force registered with DNS.')
            fprintf('%s\n', '                                        Allowed values: false, true.')
            fprintf('%s\n', '    --https-only                      : Redirect all traffic made to an app using HTTP to HTTPS.')
            fprintf('%s\n', '                                        Allowed values: false, true.')
            fprintf('%s\n', '    --skip-custom-domain-verification : If true, custom (non *.azurewebsites.net) domains associated')
            fprintf('%s\n', '                                        with web app are not verified.  Allowed values: false, true.')
            fprintf('%s\n', '    --skip-dns-registration           : If true web app hostname is not registered with DNS on')
            fprintf('%s\n', '                                        creation.  Allowed values: false, true.')
            fprintf('%s\n', '    --slot -s                         : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                        specified.')
            fprintf('%s\n', '    --ttl-in-seconds                  : Time to live in seconds for web app''s default domain name.')
            fprintf('%s\n', '                                        Allowed values: false, true.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                             : Add an object to a list of objects by specifying a path and')
            fprintf('%s\n', '                                        key value pairs.  Example: --add property.listProperty')
            fprintf('%s\n', '                                        <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                    : When using ''set'' or ''add'', preserve string literals instead')
            fprintf('%s\n', '                                        of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                          : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                        --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                        propertyToRemove.')
            fprintf('%s\n', '    --set                             : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                        set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                             : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                        complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                        Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                        ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                         : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                        configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g               : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                        using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the tags of a web app.')
            fprintf('%s\n', '        az webapp update -g MyResourceGroup -n MyAppName --set tags.tagName=tagValue')
            fprintf('%s\n', '    Update a web app. (autogenerated)')
            fprintf('%s\n', '        az webapp update --https-only true --name MyAppName --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
