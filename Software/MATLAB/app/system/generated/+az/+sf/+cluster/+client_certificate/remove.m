classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az sf cluster client-certificate remove : Remove client certificates or subject names used for
            % authentication.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf cluster client-certificate remove ';
        end
        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            % JSON encoded parameters configuration. Use @{file} to load from a file. For example: [{"certificateCommonName": "test.com","certificateIssuerThumbprint": "22B4AE296B504E512DF880A77A2CAE20200FF922"}].
            this.Options = [this.Options, '--client-certificate-common-names', varargin{:}];
        end

        function this = thumbprints(this, varargin)
            % A single or Space-separated list of client certificate thumbprint(s) to be remove.
            this.Options = [this.Options, '--thumbprints', varargin{:}];
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
            fprintf('%s\n', '    az sf cluster client-certificate remove : Remove client certificates or subject names used for')
            fprintf('%s\n', '    authentication.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name -c      [Required] : Specify the name of the cluster, if not given it will be')
            fprintf('%s\n', '                                        same as resource group name.')
            fprintf('%s\n', '    --resource-group -g    [Required] : Specify the resource group name. You can configure the')
            fprintf('%s\n', '                                        default group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --certificate-common-name         : Client certificate common name.')
            fprintf('%s\n', '    --certificate-issuer-thumbprint   : Client certificate issuer thumbprint.')
            fprintf('%s\n', '    --client-certificate-common-names : JSON encoded parameters configuration. Use @{file} to load')
            fprintf('%s\n', '                                        from a file. For example: [{"certificateCommonName":')
            fprintf('%s\n', '                                        "test.com","certificateIssuerThumbprint":')
            fprintf('%s\n', '                                        "22B4AE296B504E512DF880A77A2CAE20200FF922"}].')
            fprintf('%s\n', '    --thumbprints                     : A single or Space-separated list of client certificate')
            fprintf('%s\n', '                                        thumbprint(s) to be remove.')
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
            fprintf('%s\n', '    Remove a client certificate by thumbprint.')
            fprintf('%s\n', '        az sf cluster client-certificate remove -g group-name -c cluster1 --thumbprint')
            fprintf('%s\n', '        ''5F3660C715EBBDA31DB1FFDCF508302348DE8E7A''')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster client-certificate remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
