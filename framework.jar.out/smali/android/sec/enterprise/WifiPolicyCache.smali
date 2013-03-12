.class public Landroid/sec/enterprise/WifiPolicyCache;
.super Ljava/lang/Object;
.source "WifiPolicyCache.java"


# static fields
.field public static final ACTION_WIFI_POLICY_STATE_CHANGED:Ljava/lang/String; = "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

.field public static final EXTRA_WIFI_TYPE_CHANGED:Ljava/lang/String; = "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

.field public static final TYPE_ALLOW_USER_CHANGES:Ljava/lang/String; = "ALLOW_USER_CHANGES"

.field public static final TYPE_ALLOW_USER_PROFILES:Ljava/lang/String; = "ALLOW_USER_PROFILES"

.field public static final TYPE_BLOCKED_NETWORKS:Ljava/lang/String; = "BLOCKED_NETWORKS"

.field public static final TYPE_ENTERPRISE_SSIDS:Ljava/lang/String; = "ENTERPRISE_SSIDS"

.field public static final TYPE_MINIMUM_SECURITY_LEVEL:Ljava/lang/String; = "MINIMUM_SECURITY_LEVEL"

.field public static final TYPE_PROMPT_CREDENTIALS_ENABLED:Ljava/lang/String; = "PROMPT_CREDENTIALS_ENABLED"

.field public static final TYPE_WIFI_ALLOWED:Ljava/lang/String; = "WIFI_ALLOWED"

.field private static sInstance:Landroid/sec/enterprise/WifiPolicyCache;


# instance fields
.field private mAllowUserChanges:Z

.field private mAllowUserProfiles:Z

.field private mBlockedSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnterpriseSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumSecurityLevel:I

.field private mPromptCredentialsEnabled:Z

.field private mWifiAllowed:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 40
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 41
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 42
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z

    .line 43
    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    .line 59
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 60
    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    new-instance v1, Landroid/sec/enterprise/WifiPolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/WifiPolicyCache$1;-><init>(Landroid/sec/enterprise/WifiPolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {v0, p0}, Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    .line 55
    :cond_0
    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-object v0
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 85
    monitor-enter p0

    if-nez p1, :cond_1

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 87
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 88
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 89
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z

    .line 90
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 91
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 92
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_1
    :try_start_1
    const-string v0, "ENTERPRISE_SSIDS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_2
    :try_start_2
    const-string v0, "BLOCKED_NETWORKS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "ALLOW_USER_CHANGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    goto :goto_0

    .line 101
    :cond_4
    const-string v0, "ALLOW_USER_PROFILES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z

    goto :goto_0

    .line 103
    :cond_5
    const-string v0, "WIFI_ALLOWED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    goto :goto_0

    .line 105
    :cond_6
    const-string v0, "PROMPT_CREDENTIALS_ENABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    goto :goto_0

    .line 107
    :cond_7
    const-string v0, "MINIMUM_SECURITY_LEVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 173
    if-nez p1, :cond_1

    .line 174
    const/4 p1, 0x0

    .line 180
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 176
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 178
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private showMessage(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "message"

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method


# virtual methods
.method public declared-synchronized getAllowUserChanges()Z
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUserProfiles()Z
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPromptCredentialsEnabled()Z
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 113
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 116
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4
    .parameter "config"
    .parameter "showMsg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    monitor-enter p0

    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 140
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    if-eqz p2, :cond_2

    :cond_2
    move v0, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_3
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    iget v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_0

    .line 146
    if-eqz p2, :cond_4

    :cond_4
    move v0, v1

    .line 149
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiAllowed(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 162
    :goto_0
    monitor-exit p0

    return v0

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
