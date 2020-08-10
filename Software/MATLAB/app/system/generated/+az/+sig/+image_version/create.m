classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sig image-version create : Create a new image version.
            % This operation might take a long time depending on the replicate region number. Use "--no-
            % wait" is advised.
            this.BaseCmd = 'az sig image-version create ';
        end
        function this = gallery_image_definition(this, varargin)
            % Gallery image definition.
            this.Options = [this.Options, '--gallery-image-definition', varargin{:}];
        end

        function this = gallery_image_version(this, varargin)
            % Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. `<MajorVersion>.<MinorVersion>.<Patch>`.
            this.Options = [this.Options, '--gallery-image-version', varargin{:}];
        end

        function this = gallery_name(this, varargin)
            % Gallery name.
            this.Options = [this.Options, '--gallery-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = data_snapshot_luns(this, varargin)
            % Logical unit numbers (space-delimited) of data disk snapshots.
            this.Options = [this.Options, '--data-snapshot-luns', varargin{:}];
        end

        function this = data_snapshots(this, varargin)
            % Names or IDs (space-delimited) of data disk snapshots.
            this.Options = [this.Options, '--data-snapshots', varargin{:}];
        end

        function this = end_of_life_date(this, varargin)
            % The end of life date, e.g. '2020-12-31'.
            this.Options = [this.Options, '--end-of-life-date', varargin{:}];
        end

        function this = exclude_from_latest(this, varargin)
            % The flag means that if it is set to true, people deploying VMs with version omitted will not use this version.  Allowed values: false, true.
            this.Options = [this.Options, '--exclude-from-latest', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = managed_image(this, varargin)
            % Image name(if in the same resource group) or resource id.
            this.Options = [this.Options, '--managed-image', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = os_snapshot(this, varargin)
            % Name or ID of OS disk snapshot.
            this.Options = [this.Options, '--os-snapshot', varargin{:}];
        end

        function this = replica_count(this, varargin)
            % The default number of replicas to be created per region. To set regional replication counts, use --target-regions.
            this.Options = [this.Options, '--replica-count', varargin{:}];
        end

        function this = storage_account_type(this, varargin)
            % The default storage account type to be used per region. To set regional storage account types, use --target-regions.  Allowed values: Premium_LRS, Standard_LRS, Standard_ZRS.
            this.Options = [this.Options, '--storage-account-type', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = target_region_encryption(this, varargin)
            % Space-separated list of customer managed keys for encrypting the OS and data disks in the gallery artifact for each region. Format for each region: `<os_des>,<lun1>,<lun1_des>,<lun2>,<lun2_des>`. Use "null" as a placeholder.
            this.Options = [this.Options, '--target-region-encryption', varargin{:}];
        end

        function this = target_regions(this, varargin)
            % Space-separated list of regions and their replica counts. Use `<region>[=<replica count>][=<storage account type>]` to optionally set the replica count and/or storage account type for each region. If a replica count is not specified, the default replica count will be used. If a storage account type is not specified, the default storage account type will be used.
            this.Options = [this.Options, '--target-regions', varargin{:}];
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
            fprintf('%s\n', '    az sig image-version create : Create a new image version.')
            fprintf('%s\n', '        This operation might take a long time depending on the replicate region number. Use "--no-')
            fprintf('%s\n', '        wait" is advised.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gallery-image-definition -i [Required] : Gallery image definition.')
            fprintf('%s\n', '    --gallery-image-version -e    [Required] : Gallery image version in semantic version pattern.')
            fprintf('%s\n', '                                               The allowed characters are digit and period. Digits')
            fprintf('%s\n', '                                               must be within the range of a 32-bit integer, e.g.')
            fprintf('%s\n', '                                               `<MajorVersion>.<MinorVersion>.<Patch>`.')
            fprintf('%s\n', '    --gallery-name -r             [Required] : Gallery name.')
            fprintf('%s\n', '    --resource-group -g           [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                               group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --data-snapshot-luns                     : Logical unit numbers (space-delimited) of data disk')
            fprintf('%s\n', '                                               snapshots.')
            fprintf('%s\n', '    --data-snapshots                         : Names or IDs (space-delimited) of data disk')
            fprintf('%s\n', '                                               snapshots.')
            fprintf('%s\n', '    --end-of-life-date                       : The end of life date, e.g. ''2020-12-31''.')
            fprintf('%s\n', '    --exclude-from-latest                    : The flag means that if it is set to true, people')
            fprintf('%s\n', '                                               deploying VMs with version omitted will not use this')
            fprintf('%s\n', '                                               version.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                            : Location. Values from: `az account list-locations`.')
            fprintf('%s\n', '                                               You can configure the default location using `az')
            fprintf('%s\n', '                                               configure --defaults location=<location>`.')
            fprintf('%s\n', '    --managed-image                          : Image name(if in the same resource group) or resource')
            fprintf('%s\n', '                                               id.')
            fprintf('%s\n', '    --no-wait                                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --os-snapshot                            : Name or ID of OS disk snapshot.')
            fprintf('%s\n', '    --replica-count                          : The default number of replicas to be created per')
            fprintf('%s\n', '                                               region. To set regional replication counts, use')
            fprintf('%s\n', '                                               --target-regions.')
            fprintf('%s\n', '    --storage-account-type                   : The default storage account type to be used per')
            fprintf('%s\n', '                                               region. To set regional storage account types, use')
            fprintf('%s\n', '                                               --target-regions.  Allowed values: Premium_LRS,')
            fprintf('%s\n', '                                               Standard_LRS, Standard_ZRS.')
            fprintf('%s\n', '    --tags                                   : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                               Use '''' to clear existing tags.')
            fprintf('%s\n', '    --target-region-encryption               : Space-separated list of customer managed keys for')
            fprintf('%s\n', '                                               encrypting the OS and data disks in the gallery')
            fprintf('%s\n', '                                               artifact for each region. Format for each region:')
            fprintf('%s\n', '                                               `<os_des>,<lun1>,<lun1_des>,<lun2>,<lun2_des>`. Use')
            fprintf('%s\n', '                                               "null" as a placeholder.')
            fprintf('%s\n', '    --target-regions                         : Space-separated list of regions and their replica')
            fprintf('%s\n', '                                               counts. Use `<region>[=<replica count>][=<storage')
            fprintf('%s\n', '                                               account type>]` to optionally set the replica count')
            fprintf('%s\n', '                                               and/or storage account type for each region. If a')
            fprintf('%s\n', '                                               replica count is not specified, the default replica')
            fprintf('%s\n', '                                               count will be used. If a storage account type is not')
            fprintf('%s\n', '                                               specified, the default storage account type will be')
            fprintf('%s\n', '                                               used.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                              : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                               table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                  : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                               more information and examples.')
            fprintf('%s\n', '    --subscription                           : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                               default subscription using `az account set -s')
            fprintf('%s\n', '                                               NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                               debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a new image version')
            fprintf('%s\n', '        az sig image-version create -g MyResourceGroup --gallery-name MyGallery --gallery-image-')
            fprintf('%s\n', '        definition MyImage --gallery-image-version 1.0.0 --managed-image /subscriptions/00000000-000')
            fprintf('%s\n', '        0-0000-0000-00000000xxxx/resourceGroups/imageGroups/providers/images/MyManagedImage')
            fprintf('%s\n', '    Add a new image version replicated across multiple regions with different replication counts')
            fprintf('%s\n', '    each. Eastus2 will have it''s replica count set to the default replica count.')
            fprintf('%s\n', '        az sig image-version create -g MyResourceGroup --gallery-name MyGallery \')
            fprintf('%s\n', '        --gallery-image-definition MyImage --gallery-image-version 1.0.0 \')
            fprintf('%s\n', '        --managed-image image-name --target-regions eastus2 ukwest=3 southindia=2')
            fprintf('%s\n', '    Add a new image version and don''t wait on it. Later you can invoke "az sig image-version wait"')
            fprintf('%s\n', '    command when ready to create a vm from the gallery image version')
            fprintf('%s\n', '        az sig image-version create --no-wait -g MyResourceGroup --gallery-name MyGallery \')
            fprintf('%s\n', '        --gallery-image-definition MyImage --gallery-image-version 1.0.0 \')
            fprintf('%s\n', '        --managed-image imageInTheSameResourceGroup')
            fprintf('%s\n', '    Add a new image version with target regions that have different storage account types and')
            fprintf('%s\n', '    replica counts')
            fprintf('%s\n', '        az sig image-version create -g MyResourceGroup --gallery-image-version 1.0.0 \')
            fprintf('%s\n', '        --target-regions westus=2=standard_lrs eastus=3=standard_zrs \')
            fprintf('%s\n', '        --gallery-name MyGallery --gallery-image-definition MyImage \')
            fprintf('%s\n', '        --managed-image imageInTheSameResourceGroup')
            fprintf('%s\n', '    Add a new image version with target regions and customer managed keys for encryption.')
            fprintf('%s\n', '        az sig image-version create -g MyResourceGroup --gallery-image-version 1.0.0 --target-')
            fprintf('%s\n', '        regions westus=2=standard --target-region-encryption DiskEncryptionSet1,0,DiskEncryptionSet2')
            fprintf('%s\n', '        --gallery-name MyGallery --gallery-image-definition MyImage --managed-image')
            fprintf('%s\n', '        imageInTheSameResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az sig image-version create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
