classdef approve < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = approve()
            % az netappfiles volume replication approve : Authorize a volume as a replication destination for
            % a specified source.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles volume replication approve ';
        end
        function this = account_name(this, varargin)
            % The name of the ANF account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the replication source volume.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = pool_name(this, varargin)
            % The name of the ANF pool.
            this.Options = [this.Options, '--pool-name', varargin{:}];
        end

        function this = remote_volume_resource_id(this, varargin)
            % The resource id of the destination replication volume.
            this.Options = [this.Options, '--remote-volume-resource-id', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az netappfiles volume replication approve : Authorize a volume as a replication destination for')
            fprintf('%s\n', '    a specified source.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a              [Required] : The name of the ANF account.')
            fprintf('%s\n', '    --name --volume-name -n -v     [Required] : The name of the replication source volume.')
            fprintf('%s\n', '    --pool-name -p                 [Required] : The name of the ANF pool.')
            fprintf('%s\n', '    --remote-volume-resource-id -d [Required] : The resource id of the destination replication')
            fprintf('%s\n', '                                                volume.')
            fprintf('%s\n', '    --resource-group -g            [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Authorize the volume as the replication destination for the source')
            fprintf('%s\n', '        az netappfiles volume replication approve -g mygroup --account-name myaccname --pool-name')
            fprintf('%s\n', '        mypoolname --name mysourcevolname --remote-volume-resource-id /subscriptions/69a75bda-882e-4')
            fprintf('%s\n', '        4d5-8431-63421204131c/resourceGroups/mygroup1/providers/Microsoft.NetApp/netAppAccounts/myac')
            fprintf('%s\n', '        count1/capacityPools/mypool1/volumes/mydestinationvolume')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles volume replication approve"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class approve 
