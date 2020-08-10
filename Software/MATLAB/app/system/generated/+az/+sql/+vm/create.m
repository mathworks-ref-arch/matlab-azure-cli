classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql vm create : Creates a SQL virtual machine.
            % Command group 'sql vm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql vm create ';
        end
        function this = name(this, varargin)
            % Name of the SQL virtual machine. The name of the new SQL virtual machine must be equal to the underlying virtual machine created from SQL marketplace image.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. If not provided, virtual machine should be in the same region of resource group.You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = sql_mgmt_type(this, varargin)
            % SQL Server management type. If NoAgent selected, please provide --image-sku and --offer-type.  Allowed values: Full, LightWeight, NoAgent.  Default: LightWeight.
            this.Options = [this.Options, '--sql-mgmt-type', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Additional Features Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = enable_r_services(this, varargin)
            % Enable or disable R services (SQL 2016 onwards).  Allowed values: false, true. Auto Backup Settings Arguments
            this.Options = [this.Options, '--enable-r-services', varargin{:}];
        end

        function this = backup_pwd(this, varargin)
            % Password for encryption on backup.
            this.Options = [this.Options, '--backup-pwd', varargin{:}];
        end

        function this = backup_schedule_type(this, varargin)
            % Backup schedule type.  Allowed values: Automated, Manual.
            this.Options = [this.Options, '--backup-schedule-type', varargin{:}];
        end

        function this = backup_system_dbs(this, varargin)
            % Include system databases on backup.  Allowed values: false, true.
            this.Options = [this.Options, '--backup-system-dbs', varargin{:}];
        end

        function this = enable_auto_backup(this, varargin)
            % Enable or disable autobackup on SQL virtual machine. If any backup settings provided, parameter automatically sets to true.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-auto-backup', varargin{:}];
        end

        function this = enable_encryption(this, varargin)
            % Enable encryption for backup on SQL virtual machine.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-encryption', varargin{:}];
        end

        function this = full_backup_duration(this, varargin)
            % Duration of the time window of a given day during which full backups can take place. 1-23 hours.
            this.Options = [this.Options, '--full-backup-duration', varargin{:}];
        end

        function this = full_backup_frequency(this, varargin)
            % Frequency of full backups. In both cases, full backups begin during the next scheduled time window.  Allowed values: Daily, Weekly.
            this.Options = [this.Options, '--full-backup-frequency', varargin{:}];
        end

        function this = full_backup_start_hour(this, varargin)
            % Start time of a given day during which full backups can take place. 0-23 hours.
            this.Options = [this.Options, '--full-backup-start-hour', varargin{:}];
        end

        function this = log_backup_frequency(this, varargin)
            % Frequency of log backups. 5-60 minutes.
            this.Options = [this.Options, '--log-backup-frequency', varargin{:}];
        end

        function this = retention_period(this, varargin)
            % Retention period of backup. 1-30 days.
            this.Options = [this.Options, '--retention-period', varargin{:}];
        end

        function this = sa_key(this, varargin)
            % Storage account key where backup will be taken to.
            this.Options = [this.Options, '--sa-key', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Storage account url where backup will be taken to. Auto Patching Settings Arguments
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = day_of_week(this, varargin)
            % Day of week to apply the patch on.  Allowed values: Friday, Monday, Saturday, Sunday, Thursday, Tuesday, Wednesday.
            this.Options = [this.Options, '--day-of-week', varargin{:}];
        end

        function this = enable_auto_patching(this, varargin)
            % Enable or disable autopatching on SQL virtual machine. If any autopatching settings provided, parameter automatically sets to true.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-auto-patching', varargin{:}];
        end

        function this = maintenance_window_duration(this, varargin)
            % Duration of patching. 30-180 minutes.
            this.Options = [this.Options, '--maintenance-window-duration', varargin{:}];
        end

        function this = maintenance_window_start_hour(this, varargin)
            % Hour of the day when patching is initiated. Local VM time 0-23 hours. Key Vault Credential Settings Arguments
            this.Options = [this.Options, '--maintenance-window-start-hour', varargin{:}];
        end

        function this = credential_name(this, varargin)
            % Credential name.
            this.Options = [this.Options, '--credential-name', varargin{:}];
        end

        function this = enable_key_vault_credential(this, varargin)
            % Enable or disable key vault credential setting. If any key vault settings provided, parameter automatically sets to true. Allowed values: false, true.
            this.Options = [this.Options, '--enable-key-vault-credential', varargin{:}];
        end

        function this = key_vault(this, varargin)
            % Azure Key Vault url.
            this.Options = [this.Options, '--key-vault', varargin{:}];
        end

        function this = sp_name(this, varargin)
            % Service principal name to access key vault.
            this.Options = [this.Options, '--sp-name', varargin{:}];
        end

        function this = sp_secret(this, varargin)
            % Service principal name secret to access key vault. SQL Connectivity Update Settings Arguments
            this.Options = [this.Options, '--sp-secret', varargin{:}];
        end

        function this = connectivity_type(this, varargin)
            % SQL Server connectivity option.  Allowed values: LOCAL, PRIVATE, PUBLIC.
            this.Options = [this.Options, '--connectivity-type', varargin{:}];
        end

        function this = port(this, varargin)
            % SQL Server port.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = sql_auth_update_pwd(this, varargin)
            % SQL Server sysadmin login password.
            this.Options = [this.Options, '--sql-auth-update-pwd', varargin{:}];
        end

        function this = sql_auth_update_username(this, varargin)
            % SQL Server sysadmin login to create. SQL Server License Arguments
            this.Options = [this.Options, '--sql-auth-update-username', varargin{:}];
        end

        function this = license_type(this, varargin)
            % SQL Server license type.  Allowed values: AHUB, DR, PAYG.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = image_offer(this, varargin)
            % SQL image offer. Examples include SQL2008R2-WS2008, SQL2008-WS2008.
            this.Options = [this.Options, '--image-offer', varargin{:}];
        end

        function this = image_sku(this, varargin)
            % SQL image sku.  Allowed values: Developer, Enterprise, Express, Standard, Web. SQL Workload Type Update Settings Arguments
            this.Options = [this.Options, '--image-sku', varargin{:}];
        end

        function this = sql_workload_type(this, varargin)
            % SQL Server workload type.  Allowed values: DW, GENERAL, OLTP.
            this.Options = [this.Options, '--sql-workload-type', varargin{:}];
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
            fprintf('%s\n', '    az sql vm create : Creates a SQL virtual machine.')
            fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of the SQL virtual machine. The name of the new SQL')
            fprintf('%s\n', '                                      virtual machine must be equal to the underlying virtual')
            fprintf('%s\n', '                                      machine created from SQL marketplace image.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                   : Location. If not provided, virtual machine should be in the')
            fprintf('%s\n', '                                      same region of resource group.You can configure the default')
            fprintf('%s\n', '                                      location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --sql-mgmt-type                 : SQL Server management type. If NoAgent selected, please')
            fprintf('%s\n', '                                      provide --image-sku and --offer-type.  Allowed values: Full,')
            fprintf('%s\n', '                                      LightWeight, NoAgent.  Default: LightWeight.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', 'Additional Features Arguments')
            fprintf('%s\n', '    --enable-r-services             : Enable or disable R services (SQL 2016 onwards).  Allowed')
            fprintf('%s\n', '                                      values: false, true.')
            fprintf('%s\n', 'Auto Backup Settings Arguments')
            fprintf('%s\n', '    --backup-pwd                    : Password for encryption on backup.')
            fprintf('%s\n', '    --backup-schedule-type          : Backup schedule type.  Allowed values: Automated, Manual.')
            fprintf('%s\n', '    --backup-system-dbs             : Include system databases on backup.  Allowed values: false,')
            fprintf('%s\n', '                                      true.')
            fprintf('%s\n', '    --enable-auto-backup            : Enable or disable autobackup on SQL virtual machine. If any')
            fprintf('%s\n', '                                      backup settings provided, parameter automatically sets to')
            fprintf('%s\n', '                                      true.  Allowed values: false, true.')
            fprintf('%s\n', '    --enable-encryption             : Enable encryption for backup on SQL virtual machine.  Allowed')
            fprintf('%s\n', '                                      values: false, true.')
            fprintf('%s\n', '    --full-backup-duration          : Duration of the time window of a given day during which full')
            fprintf('%s\n', '                                      backups can take place. 1-23 hours.')
            fprintf('%s\n', '    --full-backup-frequency         : Frequency of full backups. In both cases, full backups begin')
            fprintf('%s\n', '                                      during the next scheduled time window.  Allowed values: Daily,')
            fprintf('%s\n', '                                      Weekly.')
            fprintf('%s\n', '    --full-backup-start-hour        : Start time of a given day during which full backups can take')
            fprintf('%s\n', '                                      place. 0-23 hours.')
            fprintf('%s\n', '    --log-backup-frequency          : Frequency of log backups. 5-60 minutes.')
            fprintf('%s\n', '    --retention-period              : Retention period of backup. 1-30 days.')
            fprintf('%s\n', '    --sa-key                        : Storage account key where backup will be taken to.')
            fprintf('%s\n', '    --storage-account               : Storage account url where backup will be taken to.')
            fprintf('%s\n', 'Auto Patching Settings Arguments')
            fprintf('%s\n', '    --day-of-week                   : Day of week to apply the patch on.  Allowed values: Friday,')
            fprintf('%s\n', '                                      Monday, Saturday, Sunday, Thursday, Tuesday, Wednesday.')
            fprintf('%s\n', '    --enable-auto-patching          : Enable or disable autopatching on SQL virtual machine. If any')
            fprintf('%s\n', '                                      autopatching settings provided, parameter automatically sets')
            fprintf('%s\n', '                                      to true.  Allowed values: false, true.')
            fprintf('%s\n', '    --maintenance-window-duration   : Duration of patching. 30-180 minutes.')
            fprintf('%s\n', '    --maintenance-window-start-hour : Hour of the day when patching is initiated. Local VM time 0-23')
            fprintf('%s\n', '                                      hours.')
            fprintf('%s\n', 'Key Vault Credential Settings Arguments')
            fprintf('%s\n', '    --credential-name               : Credential name.')
            fprintf('%s\n', '    --enable-key-vault-credential   : Enable or disable key vault credential setting. If any key')
            fprintf('%s\n', '                                      vault settings provided, parameter automatically sets to true.')
            fprintf('%s\n', '                                      Allowed values: false, true.')
            fprintf('%s\n', '    --key-vault                     : Azure Key Vault url.')
            fprintf('%s\n', '    --sp-name                       : Service principal name to access key vault.')
            fprintf('%s\n', '    --sp-secret                     : Service principal name secret to access key vault.')
            fprintf('%s\n', 'SQL Connectivity Update Settings Arguments')
            fprintf('%s\n', '    --connectivity-type             : SQL Server connectivity option.  Allowed values: LOCAL,')
            fprintf('%s\n', '                                      PRIVATE, PUBLIC.')
            fprintf('%s\n', '    --port                          : SQL Server port.')
            fprintf('%s\n', '    --sql-auth-update-pwd           : SQL Server sysadmin login password.')
            fprintf('%s\n', '    --sql-auth-update-username      : SQL Server sysadmin login to create.')
            fprintf('%s\n', 'SQL Server License Arguments')
            fprintf('%s\n', '    --license-type -i    [Required] : SQL Server license type.  Allowed values: AHUB, DR, PAYG.')
            fprintf('%s\n', '    --image-offer                   : SQL image offer. Examples include SQL2008R2-WS2008,')
            fprintf('%s\n', '                                      SQL2008-WS2008.')
            fprintf('%s\n', '    --image-sku                     : SQL image sku.  Allowed values: Developer, Enterprise,')
            fprintf('%s\n', '                                      Express, Standard, Web.')
            fprintf('%s\n', 'SQL Workload Type Update Settings Arguments')
            fprintf('%s\n', '    --sql-workload-type             : SQL Server workload type.  Allowed values: DW, GENERAL, OLTP.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a SQL virtual machine with AHUB billing tag.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type AHUB')
            fprintf('%s\n', '    Create a SQL virtual machine with DR billing tag.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type DR')
            fprintf('%s\n', '    Create a SQL virtual machine with specific sku type and license type.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --image-sku Enterprise --license-type')
            fprintf('%s\n', '        AHUB')
            fprintf('%s\n', '    Create a SQL virtual machine with NoAgent type, only valid for EOS SQL 2008 and SQL 2008 R2.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type AHUB --sql-mgmt-type')
            fprintf('%s\n', '        NoAgent --image-sku Enterprise --image-offer SQL2008-WS2008R2')
            fprintf('%s\n', '    Enable R services in SQL2016 onwards.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type PAYG --sql-mgmt-type')
            fprintf('%s\n', '        Full --enable-r-services true')
            fprintf('%s\n', '    Create SQL virtual machine and configure auto backup settings.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type PAYG --sql-mgmt-type')
            fprintf('%s\n', '        Full --backup-schedule-type manual --full-backup-frequency Weekly --full-backup-start-hour 2')
            fprintf('%s\n', '        --full-backup-duration 2 --sa-key {storageKey} --storage-account')
            fprintf('%s\n', '        ''https://storageacc.blob.core.windows.net/'' --retention-period 30 --log-backup-frequency 60')
            fprintf('%s\n', '    Create SQL virtual machine and configure auto patching settings.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type PAYG --sql-mgmt-type')
            fprintf('%s\n', '        Full --day-of-week sunday --maintenance-window-duration 60 --maintenance-window-start-hour 2')
            fprintf('%s\n', '    Create SQL virtual machine and configure SQL connectivity settings.')
            fprintf('%s\n', '        az sql vm create -n sqlvm -g myresourcegroup -l eastus --license-type PAYG --sql-mgmt-type')
            fprintf('%s\n', '        Full --connectivity-type private --port 1433 --sql-auth-update-username {newlogin} --sql-')
            fprintf('%s\n', '        auth-update-pwd {sqlpassword}')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql vm create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
