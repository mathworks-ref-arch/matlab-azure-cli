classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az sf cluster client-certificate add : Add a common name or certificate thumbprint to the
            % cluster for client authentication.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf cluster client-certificate add ';
        end
        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = admin_client_thumbprints(this, varargin)
            % Client certificate thumbprint that only has admin permission.
            this.Options = [this.Options, '--admin-client-thumbprints', varargin{:}];
        end

        function this = certificate_common_name(this, varargin)
            % Client certificate common name.
            this.Options = [this.Options, '--certificate-common-name', varargin{:}];
        end

        function this = certificate_issuer_thumbprint(this, varargin)
            % Client certificate issuer thumbprint.
            this.Options = [this.Options, '--certificate-issuer-thumbprint', varargin{:}];
        end

        function this = client_certificate_common_names(this, varargin)
            % JSON encoded parameters configuration. Use @{file} to load from a file. For example: [{"isAdmin":true, "certificateCommonName": "test.com", "certificateIssuerThumbprint": "22B4AE296B504E512DF880A77A2CAE20200FF922"}].
            this.Options = [this.Options, '--client-certificate-common-names', varargin{:}];
        end

        function this = is_admin(this, varargin)
            % Client authentication type.
            this.Options = [this.Options, '--is-admin', varargin{:}];
        end

        function this = readonly_client_thumbprints(this, varargin)
            % Space-separated list of client certificate thumbprint that has read only permission.
            this.Options = [this.Options, '--readonly-client-thumbprints', varargin{:}];
        end

        function this = thumbprint(this, varargin)
            % Client certificate thumbprint.
            this.Options = [this.Options, '--thumbprint', varargin{:}];
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
            fprintf('%s\n', '    az sf cluster client-certificate add : Add a common name or certificate thumbprint to the')
            fprintf('%s\n', '    cluster for client authentication.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name -c      [Required] : Specify the name of the cluster, if not given it will be')
            fprintf('%s\n', '                                        same as resource group name.')
            fprintf('%s\n', '    --resource-group -g    [Required] : Specify the resource group name. You can configure the')
            fprintf('%s\n', '                                        default group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --admin-client-thumbprints        : Client certificate thumbprint that only has admin')
            fprintf('%s\n', '                                        permission.')
            fprintf('%s\n', '    --certificate-common-name         : Client certificate common name.')
            fprintf('%s\n', '    --certificate-issuer-thumbprint   : Client certificate issuer thumbprint.')
            fprintf('%s\n', '    --client-certificate-common-names : JSON encoded parameters configuration. Use @{file} to load')
            fprintf('%s\n', '                                        from a file. For example: [{"isAdmin":true,')
            fprintf('%s\n', '                                        "certificateCommonName": "test.com",')
            fprintf('%s\n', '                                        "certificateIssuerThumbprint":')
            fprintf('%s\n', '                                        "22B4AE296B504E512DF880A77A2CAE20200FF922"}].')
            fprintf('%s\n', '    --is-admin                        : Client authentication type.')
            fprintf('%s\n', '    --readonly-client-thumbprints     : Space-separated list of client certificate thumbprint that')
            fprintf('%s\n', '                                        has read only permission.')
            fprintf('%s\n', '    --thumbprint                      : Client certificate thumbprint.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add client certificate by thumbprint')
            fprintf('%s\n', '        az sf cluster client-certificate add -g group-name -c cluster1 --thumbprint')
            fprintf('%s\n', '        ''5F3660C715EBBDA31DB1FFDCF508302348DE8E7A''')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster client-certificate add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
