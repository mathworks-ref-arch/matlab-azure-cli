classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az netappfiles volume create : Create a new Azure NetApp Files (ANF) volume. Export policies are
            % applied with the subgroup commands but note that volumes are always created with a default
            % export policy.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles volume create ';
        end
        function this = account_name(this, varargin)
            % The name of the ANF account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = file_path(this, varargin)
            % A 1-80 character long alphanumeric string value that identifies a unique file share or mount point in the target subnet.
            this.Options = [this.Options, '--file-path', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the ANF volume.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = pool_name(this, varargin)
            % The name of the ANF pool.
            this.Options = [this.Options, '--pool-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = usage_threshold(this, varargin)
            % The maximum storage quota allowed for a file system as integer number of GiB. Min 100 GiB, max 100TiB".
            this.Options = [this.Options, '--usage-threshold', varargin{:}];
        end

        function this = vnet(this, varargin)
            % The ARM Id or name of the vnet for the volume.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

        function this = endpoint_type(this, varargin)
            % Whether the volume is source ("src") or destination ("dst").
            this.Options = [this.Options, '--endpoint-type', varargin{:}];
        end

        function this = protocol_types(this, varargin)
            % Space seperated list of protocols that the volume can use, available protocols are "NFSv4.1", "NFSv3", "CIFS".
            this.Options = [this.Options, '--protocol-types', varargin{:}];
        end

        function this = remote_volume_resource_id(this, varargin)
            % The volume id of the remote volume of the replication (the destination for "src" volume endpoints and the source for "dst" endpoints).
            this.Options = [this.Options, '--remote-volume-resource-id', varargin{:}];
        end

        function this = replication_schedule(this, varargin)
            % The replication schedule, e.g. "_10minutely, hourly, daily, weekly, monthly".
            this.Options = [this.Options, '--replication-schedule', varargin{:}];
        end

        function this = service_level(this, varargin)
            % The service level.  Allowed values: Premium, Standard, Ultra.
            this.Options = [this.Options, '--service-level', varargin{:}];
        end

        function this = snapshot_id(this, varargin)
            % Create a volume created from this snapshot. UUID v4 or resource identifier used to identify the Snapshot. example snapshot_id "9760acf5-4638-11e7-9bdb-020073ca3333".
            this.Options = [this.Options, '--snapshot-id', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The ARM Id or name of the subnet for the vnet. If omitted 'default' will be used.  Default: default.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags in `key[=value]` format.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = volume_type(this, varargin)
            % Whether the volume should be a data protection volume ("DataProtection"), empty if this is not a data protection volume.
            this.Options = [this.Options, '--volume-type', varargin{:}];
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
            fprintf('%s\n', '    az netappfiles volume create : Create a new Azure NetApp Files (ANF) volume. Export policies are')
            fprintf('%s\n', '    applied with the subgroup commands but note that volumes are always created with a default')
            fprintf('%s\n', '    export policy.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a          [Required] : The name of the ANF account.')
            fprintf('%s\n', '    --file-path                [Required] : A 1-80 character long alphanumeric string value that')
            fprintf('%s\n', '                                            identifies a unique file share or mount point in the')
            fprintf('%s\n', '                                            target subnet.')
            fprintf('%s\n', '    --location -l              [Required] : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                            can configure the default location using `az configure')
            fprintf('%s\n', '                                            --defaults location=<location>`.')
            fprintf('%s\n', '    --name --volume-name -n -v [Required] : The name of the ANF volume.')
            fprintf('%s\n', '    --pool-name -p             [Required] : The name of the ANF pool.')
            fprintf('%s\n', '    --resource-group -g        [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                            group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --usage-threshold          [Required] : The maximum storage quota allowed for a file system as')
            fprintf('%s\n', '                                            integer number of GiB. Min 100 GiB, max 100TiB".')
            fprintf('%s\n', '    --vnet                     [Required] : The ARM Id or name of the vnet for the volume.')
            fprintf('%s\n', '    --endpoint-type                       : Whether the volume is source ("src") or destination')
            fprintf('%s\n', '                                            ("dst").')
            fprintf('%s\n', '    --protocol-types                      : Space seperated list of protocols that the volume can')
            fprintf('%s\n', '                                            use, available protocols are "NFSv4.1", "NFSv3", "CIFS".')
            fprintf('%s\n', '    --remote-volume-resource-id           : The volume id of the remote volume of the replication')
            fprintf('%s\n', '                                            (the destination for "src" volume endpoints and the')
            fprintf('%s\n', '                                            source for "dst" endpoints).')
            fprintf('%s\n', '    --replication-schedule                : The replication schedule, e.g. "_10minutely, hourly,')
            fprintf('%s\n', '                                            daily, weekly, monthly".')
            fprintf('%s\n', '    --service-level                       : The service level.  Allowed values: Premium, Standard,')
            fprintf('%s\n', '                                            Ultra.')
            fprintf('%s\n', '    --snapshot-id                         : Create a volume created from this snapshot. UUID v4 or')
            fprintf('%s\n', '                                            resource identifier used to identify the Snapshot.')
            fprintf('%s\n', '                                            example snapshot_id')
            fprintf('%s\n', '                                            "9760acf5-4638-11e7-9bdb-020073ca3333".')
            fprintf('%s\n', '    --subnet                              : The ARM Id or name of the subnet for the vnet. If')
            fprintf('%s\n', '                                            omitted ''default'' will be used.  Default: default.')
            fprintf('%s\n', '    --tags                                : Space-separated tags in `key[=value]` format.')
            fprintf('%s\n', '    --volume-type                         : Whether the volume should be a data protection volume')
            fprintf('%s\n', '                                            ("DataProtection"), empty if this is not a data')
            fprintf('%s\n', '                                            protection volume.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                           : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                            table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                               : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                            information and examples.')
            fprintf('%s\n', '    --subscription                        : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                            default subscription using `az account set -s')
            fprintf('%s\n', '                                            NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                             : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                            logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an ANF volume')
            fprintf('%s\n', '        az netappfiles volume create -g mygroup --account-name myaccname --pool-name mypoolname')
            fprintf('%s\n', '        --name myvolname -l westus2 --service-level premium --usage-threshold 100 --file-path')
            fprintf('%s\n', '        "unique-file-path" --vnet myvnet --subnet mysubnet --protocol-types NFSv3 NFSv4.1')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles volume create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
