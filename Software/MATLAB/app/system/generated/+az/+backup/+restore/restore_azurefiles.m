classdef restore_azurefiles < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore_azurefiles()
            % az backup restore restore-azurefiles : Restore backed up Azure files within a file-share to the
            % same file-share or another file-share in registered storage accounts.
            % Command group 'backup' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az backup restore restore-azurefiles ';
        end
        function this = container_name(this, varargin)
            % Name of the backup container. Accepts 'Name' or 'FriendlyName' from the output of az backup container list command. If 'FriendlyName' is passed then BackupManagementType is required.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = item_name(this, varargin)
            % Name of the backed up item.
            this.Options = [this.Options, '--item-name', varargin{:}];
        end

        function this = resolve_conflict(this, varargin)
            % Instruction if there's a conflict with the restored data. Allowed values: Overwrite, Skip.
            this.Options = [this.Options, '--resolve-conflict', varargin{:}];
        end

        function this = restore_mode(this, varargin)
            % Specify the restore mode.  Allowed values: AlternateLocation, OriginalLocation.
            this.Options = [this.Options, '--restore-mode', varargin{:}];
        end

        function this = rp_name(this, varargin)
            % Name of the recovery point.
            this.Options = [this.Options, '--rp-name', varargin{:}];
        end

        function this = source_file_path(this, varargin)
            % The absolute path of the file, to be restored within the file share, as a string. This path is the same path used in the 'az storage file download' or 'az storage file show' CLI commands.
            this.Options = [this.Options, '--source-file-path', varargin{:}];
        end

        function this = source_file_type(this, varargin)
            % Specify the source file type to be selected.  Allowed values: Directory, File.
            this.Options = [this.Options, '--source-file-type', varargin{:}];
        end

        function this = target_file_share(this, varargin)
            % Destination file share to which content will be restored.
            this.Options = [this.Options, '--target-file-share', varargin{:}];
        end

        function this = target_folder(this, varargin)
            % Destination folder to which content will be restored. To restore content to root , leave the folder name empty.
            this.Options = [this.Options, '--target-folder', varargin{:}];
        end

        function this = target_storage_account(this, varargin)
            % Destination storage account to which content will be restored.
            this.Options = [this.Options, '--target-storage-account', varargin{:}];
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

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Name of the Recovery services vault.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az backup restore restore-azurefiles : Restore backed up Azure files within a file-share to the')
            fprintf('%s\n', '    same file-share or another file-share in registered storage accounts.')
            fprintf('%s\n', '        Command group ''backup'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : Name of the backup container. Accepts ''Name'' or ''FriendlyName''')
            fprintf('%s\n', '                                     from the output of az backup container list command. If')
            fprintf('%s\n', '                                     ''FriendlyName'' is passed then BackupManagementType is required.')
            fprintf('%s\n', '    --item-name -i      [Required] : Name of the backed up item.')
            fprintf('%s\n', '    --resolve-conflict  [Required] : Instruction if there''s a conflict with the restored data.')
            fprintf('%s\n', '                                     Allowed values: Overwrite, Skip.')
            fprintf('%s\n', '    --restore-mode      [Required] : Specify the restore mode.  Allowed values: AlternateLocation,')
            fprintf('%s\n', '                                     OriginalLocation.')
            fprintf('%s\n', '    --rp-name -r        [Required] : Name of the recovery point.')
            fprintf('%s\n', '    --source-file-path             : The absolute path of the file, to be restored within the file')
            fprintf('%s\n', '                                     share, as a string. This path is the same path used in the ''az')
            fprintf('%s\n', '                                     storage file download'' or ''az storage file show'' CLI commands.')
            fprintf('%s\n', '    --source-file-type             : Specify the source file type to be selected.  Allowed values:')
            fprintf('%s\n', '                                     Directory, File.')
            fprintf('%s\n', '    --target-file-share            : Destination file share to which content will be restored.')
            fprintf('%s\n', '    --target-folder                : Destination folder to which content will be restored. To')
            fprintf('%s\n', '                                     restore content to root , leave the folder name empty.')
            fprintf('%s\n', '    --target-storage-account       : Destination storage account to which content will be restored.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                          : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                     complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                     Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                     ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g            : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vault-name -v                : Name of the Recovery services vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Restore backed up Azure files within a file-share to the same file-share or another file-share')
            fprintf('%s\n', '    in registered storage accounts.')
            fprintf('%s\n', '        az backup restore restore-azurefiles --resource-group MyResourceGroup --vault-name MyVault')
            fprintf('%s\n', '        --container-name MyContainer --item-name MyItem --rp-name recoverypoint --resolve-conflict')
            fprintf('%s\n', '        Overwrite --restore-mode OriginalLocation --source-file-type File --source-file-path')
            fprintf('%s\n', '        Filepath1 Filepath2')
            fprintf('%s\n', 'For more specific examples, use: az find "az backup restore restore-azurefiles"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore_azurefiles 
