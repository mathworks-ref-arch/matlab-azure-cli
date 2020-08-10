classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql vm group create : Creates a SQL virtual machine group.
            % Command group 'sql vm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql vm group create ';
        end
        function this = name(this, varargin)
            % Name of the SQL virtual machine group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. If not provided, group will be created in the same reosurce group location.You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. SQL Server License Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = image_offer(this, varargin)
            % SQL image offer. Examples may include SQL2016-WS2016, SQL2017-WS2016.
            this.Options = [this.Options, '--image-offer', varargin{:}];
        end

        function this = image_sku(this, varargin)
            % SQL image sku.  Allowed values: Developer, Enterprise. WSFC Domain Profile Arguments
            this.Options = [this.Options, '--image-sku', varargin{:}];
        end

        function this = domain_fqdn(this, varargin)
            % Fully qualified name of the domain.
            this.Options = [this.Options, '--domain-fqdn', varargin{:}];
        end

        function this = operator_acc(this, varargin)
            % Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
            this.Options = [this.Options, '--operator-acc', varargin{:}];
        end

        function this = service_acc(this, varargin)
            % Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
            this.Options = [this.Options, '--service-acc', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Storage account url of the witness storage account.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = bootstrap_acc(this, varargin)
            % Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
            this.Options = [this.Options, '--bootstrap-acc', varargin{:}];
        end

        function this = fsw_path(this, varargin)
            % Optional path for fileshare witness.
            this.Options = [this.Options, '--fsw-path', varargin{:}];
        end

        function this = ou_path(this, varargin)
            % Organizational Unit path in which the nodes and cluster will be present. Example: OU=WSCluster,DC=testdomain,DC=com.
            this.Options = [this.Options, '--ou-path', varargin{:}];
        end

        function this = sa_key(this, varargin)
            % Primary key of the witness storage account.
            this.Options = [this.Options, '--sa-key', varargin{:}];
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
            fprintf('%s\n', '    az sql vm group create : Creates a SQL virtual machine group.')
            fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of the SQL virtual machine group.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                   : Location. If not provided, group will be created in the same')
            fprintf('%s\n', '                                      reosurce group location.You can configure the default location')
            fprintf('%s\n', '                                      using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', 'SQL Server License Arguments')
            fprintf('%s\n', '    --image-offer -i     [Required] : SQL image offer. Examples may include SQL2016-WS2016,')
            fprintf('%s\n', '                                      SQL2017-WS2016.')
            fprintf('%s\n', '    --image-sku -s       [Required] : SQL image sku.  Allowed values: Developer, Enterprise.')
            fprintf('%s\n', 'WSFC Domain Profile Arguments')
            fprintf('%s\n', '    --domain-fqdn -f     [Required] : Fully qualified name of the domain.')
            fprintf('%s\n', '    --operator-acc -p    [Required] : Account name used for operating cluster i.e. will be part of')
            fprintf('%s\n', '                                      administrators group on all the participating virtual machines')
            fprintf('%s\n', '                                      in the cluster.')
            fprintf('%s\n', '    --service-acc -e     [Required] : Account name under which SQL service will run on all')
            fprintf('%s\n', '                                      participating SQL virtual machines in the cluster.')
            fprintf('%s\n', '    --storage-account -u [Required] : Storage account url of the witness storage account.')
            fprintf('%s\n', '    --bootstrap-acc                 : Account name used for creating cluster (at minimum needs')
            fprintf('%s\n', '                                      permissions to ''Create Computer Objects'' in domain).')
            fprintf('%s\n', '    --fsw-path                      : Optional path for fileshare witness.')
            fprintf('%s\n', '    --ou-path                       : Organizational Unit path in which the nodes and cluster will')
            fprintf('%s\n', '                                      be present. Example: OU=WSCluster,DC=testdomain,DC=com.')
            fprintf('%s\n', '    --sa-key -k                     : Primary key of the witness storage account.')
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
            fprintf('%s\n', '    Create a SQL virtual machine group for SQL2016-WS2016 Enterprise virtual machines.')
            fprintf('%s\n', '        az sql vm group create -n sqlvmgroup -l eastus -g myresourcegroup --image-offer')
            fprintf('%s\n', '        SQL2016-WS2016 --image-sku Enterprise --domain-fqdn Domain.com --operator-acc testop')
            fprintf('%s\n', '        --service-acc testservice --sa-key {PublicKey} --storage-account')
            fprintf('%s\n', '        ''https://storacc.blob.core.windows.net/''')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql vm group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
