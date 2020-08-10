classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az netappfiles account ad add : Add an active directory to the account.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles account ad add ';
        end
        function this = dns(this, varargin)
            % Comma separated list of DNS server IP addresses for the Active Directory domain.
            this.Options = [this.Options, '--dns', varargin{:}];
        end

        function this = domain(this, varargin)
            % Name of the Active Directory domain.
            this.Options = [this.Options, '--domain', varargin{:}];
        end

        function this = password(this, varargin)
            % Plain text password of Active Directory domain administrator.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = smb_server_name(this, varargin)
            % NetBIOS name of the SMB server. This name will be registered as a computer account in the AD and used to mount volumes. Must be 10 characters or less.
            this.Options = [this.Options, '--smb-server-name', varargin{:}];
        end

        function this = username(this, varargin)
            % Username of Active Directory domain administrator.
            this.Options = [this.Options, '--username', varargin{:}];
        end

        function this = organizational_unit(this, varargin)
            % The Organizational Unit (OU) within the Windows Active Directory.
            this.Options = [this.Options, '--organizational-unit', varargin{:}];
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

        function this = account_name(this, varargin)
            % The name of the ANF account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = opt_add(this, varargin)
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az netappfiles account ad add : Add an active directory to the account.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --dns             [Required] : Comma separated list of DNS server IP addresses for the Active')
            fprintf('%s\n', '                                   Directory domain.')
            fprintf('%s\n', '    --domain          [Required] : Name of the Active Directory domain.')
            fprintf('%s\n', '    --password        [Required] : Plain text password of Active Directory domain administrator.')
            fprintf('%s\n', '    --smb-server-name [Required] : NetBIOS name of the SMB server. This name will be registered as a')
            fprintf('%s\n', '                                   computer account in the AD and used to mount volumes. Must be 10')
            fprintf('%s\n', '                                   characters or less.')
            fprintf('%s\n', '    --username        [Required] : Username of Active Directory domain administrator.')
            fprintf('%s\n', '    --organizational-unit        : The Organizational Unit (OU) within the Windows Active Directory.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                        : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                   value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                   string or JSON string>.')
            fprintf('%s\n', '    --force-string               : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                   attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                     : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                   property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                        : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                   Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name --name -a -n  : The name of the ANF account.')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add an active directory to the account')
            fprintf('%s\n', '        az netappfiles account ad add -g mygroup --name myname --username aduser --password aduser')
            fprintf('%s\n', '        --smb-server-name SMBSERVER --dns 1.2.3.4 --domain westcentralus')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles account ad add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
