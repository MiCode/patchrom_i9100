.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 7
    .parameter "context"
    .parameter "pms"

    .prologue
    .line 972
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 234
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 973
    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 974
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    .line 975
    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 976
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    .line 977
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 978
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    .line 980
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 981
    .local v2, filterBoot:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 984
    new-instance v4, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 987
    :try_start_0
    new-instance v3, Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 988
    .local v3, policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "application_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 989
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "application_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    new-instance v3, Lcom/android/server/enterprise/DeviceInfo;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 992
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "device_info"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 993
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "device_info"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v3, Lcom/android/server/enterprise/ExchangeAccountPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 999
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "eas_account_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1000
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "eas_account_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v3, Lcom/android/server/enterprise/EmailAccountPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 1003
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "email_account_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1004
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "email_account_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    new-instance v3, Lcom/android/server/enterprise/LocationPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 1007
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "location_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1008
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "location_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v3, Lcom/android/server/enterprise/MiscPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 1011
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "misc_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1012
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "misc_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    new-instance v3, Lcom/android/server/enterprise/RestrictionPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 1015
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "restriction_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1016
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "restriction_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    new-instance v3, Lcom/android/server/enterprise/PasswordPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 1019
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "password_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1020
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "password_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    new-instance v3, Lcom/android/server/enterprise/SecurityPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 1023
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "security_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1024
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "security_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    new-instance v3, Lcom/android/server/enterprise/RoamingPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 1027
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "roaming_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1028
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "roaming_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v3, Lcom/android/server/enterprise/WifiPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/WifiPolicy;-><init>(Landroid/content/Context;)V

    .line 1031
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "wifi_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1032
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "wifi_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    new-instance v3, Lcom/android/server/enterprise/BluetoothPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 1035
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "bluetooth_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1036
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "bluetooth_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v3, Lcom/android/server/enterprise/EmailPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 1040
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "email_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1041
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "email_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    new-instance v3, Lcom/android/server/enterprise/FirewallPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V

    .line 1045
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "firewall_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1046
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "firewall_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    new-instance v3, Lcom/android/server/enterprise/VpnInfoPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    .line 1049
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "vpn_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1050
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "vpn_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    new-instance v3, Lcom/android/server/enterprise/EnterpriseVpnPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 1053
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "enterprise_vpn_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1054
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "enterprise_vpn_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    new-instance v3, Lcom/android/server/enterprise/ApnSettingsPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    .line 1057
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "apn_settings_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1058
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "apn_settings_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v3, Lcom/android/server/enterprise/PhoneRestrictionPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 1061
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "phone_restriction_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1062
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "phone_restriction_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    new-instance v3, Lcom/android/server/enterprise/BrowserPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 1065
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "browser_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1066
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "browser_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    new-instance v3, Lcom/android/server/enterprise/DateTimePolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 1072
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "date_time_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1073
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "date_time_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    new-instance v3, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 1076
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "remoteinjection"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1077
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "remoteinjection"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    new-instance v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    .line 1080
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "kioskmode"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1081
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "kioskmode"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    new-instance v3, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;

    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    .line 1084
    .restart local v3       #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "apppermission_control_policy"

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1085
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "apppermission_control_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string v4, "edm_proxy"

    new-instance v5, Lcom/android/server/enterprise/EDMProxyService;

    invoke-direct {v5}, Lcom/android/server/enterprise/EDMProxyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    .end local v3           #policyService:Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v1

    .line 1091
    .local v1, e:Ljava/lang/Throwable;
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure creating Policy services"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V

    return-void
.end method

.method static synthetic access$500()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method private checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .parameter "db"

    .prologue
    const/4 v0, 0x1

    .line 1148
    const-string v1, "DmAppInfo"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return v0

    .line 1151
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "microphone_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_wap_push_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_data_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_auto_sync_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 1171
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_debugging_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_capture_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private compareSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 11
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 900
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    const-string v8, "android"

    const/16 v9, 0x40

    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 901
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_0

    .line 902
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Could not Read package info"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_3

    if-eqz p1, :cond_3

    .line 905
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 906
    .local v4, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 907
    .local v6, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v6           #sig:Landroid/content/pm/Signature;
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 910
    .local v5, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v6, v0, v1

    .line 911
    .restart local v6       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 910
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 914
    .end local v6           #sig:Landroid/content/pm/Signature;
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 915
    const/4 v7, 0x1

    .line 920
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v5           #set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :goto_2
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 659
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    return-void
.end method

.method private findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 7
    .parameter "adminName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 454
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 456
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 459
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    :cond_1
    :try_start_0
    new-instance v4, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    .line 469
    :goto_0
    return-object v3

    .line 464
    :catch_0
    move-exception v0

    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object v3, v5

    .line 466
    goto :goto_0

    .line 467
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v3, v5

    .line 469
    goto :goto_0
.end method

.method private getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 3
    .parameter "adminReceiver"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 299
    .local v0, auxAdm:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    .end local v0           #auxAdm:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "policyService"

    .prologue
    .line 137
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private handleDowngrade()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 946
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v1, 0x0

    .line 948
    .local v1, edmDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "enterprise.db"

    .line 950
    .local v2, edmDBPath:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 957
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 958
    .local v3, oldVersion:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 960
    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 961
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 964
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 965
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 967
    :cond_0
    return-void

    .line 952
    .end local v3           #oldVersion:I
    :catch_0
    move-exception v0

    .line 954
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFirmwareChanged()Z
    .locals 4

    .prologue
    .line 1440
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, swVer:Ljava/lang/String;
    const-string v2, "ro.build.fingerprint"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    .local v1, value:Ljava/lang/String;
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 1443
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1444
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1445
    const/4 v2, 0x1

    .line 1447
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSamsungAuthorizedAdmin(I)Z
    .locals 9
    .parameter "uid"

    .prologue
    .line 1468
    const/4 v4, 0x0

    .line 1470
    .local v4, ret:Z
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1471
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    move v5, v4

    .line 1485
    .end local v4           #ret:Z
    .local v5, ret:I
    :goto_0
    return v5

    .line 1475
    .end local v5           #ret:I
    .restart local v4       #ret:Z
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1478
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1479
    .local v1, apkPath:Ljava/lang/String;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1481
    :cond_1
    const/4 v4, 0x1

    .end local v1           #apkPath:Ljava/lang/String;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    move v5, v4

    .line 1485
    .restart local v5       #ret:I
    goto :goto_0

    .line 1482
    .end local v5           #ret:I
    :catch_0
    move-exception v2

    .line 1483
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "isSamsungAuthorizedAdmin() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .parameter "db"
    .parameter "table"

    .prologue
    .line 1133
    const/4 v1, 0x0

    .line 1134
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1136
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    const/4 v1, 0x1

    .line 1143
    :cond_0
    :goto_0
    return v1

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1140
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTableExists EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadActiveAdmins()V
    .locals 15

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "loadActiveAdmins"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminUid"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 482
    .local v11, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 483
    .local v9, storedUid:I
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminName"

    invoke-virtual {v12, v9, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, pkgName:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 488
    .local v2, compName:Landroid/content/ComponentName;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 489
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_3

    .line 490
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 491
    .local v3, currentUid:I
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    if-ne v3, v9, :cond_1

    .line 494
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 495
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    .line 497
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 536
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v3           #currentUid:I
    :catch_0
    move-exception v5

    .line 537
    .local v5, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v2           #compName:Landroid/content/ComponentName;
    .end local v5           #e:Ljava/lang/RuntimeException;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #pkgName:Ljava/lang/String;
    .end local v9           #storedUid:I
    .end local v11           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 503
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v2       #compName:Landroid/content/ComponentName;
    .restart local v3       #currentUid:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #pkgName:Ljava/lang/String;
    .restart local v9       #storedUid:I
    .restart local v11       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_3
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v13, "ADMIN"

    const-string v14, "adminUid"

    invoke-virtual {v12, v9, v13, v14, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 506
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", updated with new currentUid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", old storedUid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    .line 514
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_2
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v9, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 521
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    .line 523
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed   updating uid, removed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    .end local v3           #currentUid:I
    :cond_3
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    .line 532
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin loaded null,   removed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 542
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v2           #compName:Landroid/content/ComponentName;
    .end local v8           #pkgName:Ljava/lang/String;
    .end local v9           #storedUid:I
    :cond_4
    :try_start_4
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    .line 543
    .local v4, dpmActiveAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    .line 544
    .local v6, edmActiveAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_7

    .line 545
    if-nez v6, :cond_5

    .line 546
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #edmActiveAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .restart local v6       #edmActiveAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 548
    .local v1, cn:Landroid/content/ComponentName;
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 549
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding missing admin to EDM : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 551
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 552
    .local v10, uid:I
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->addAdmin(ILjava/lang/String;Z)Z

    goto :goto_1

    .line 558
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v10           #uid:I
    :cond_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 559
    return-void
.end method

.method private migrateFromV1()V
    .locals 23

    .prologue
    .line 1311
    const/4 v10, 0x0

    .line 1313
    .local v10, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Check for migration from 1.0"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1317
    .local v16, migrationChecked:Ljava/lang/String;
    if-eqz v16, :cond_1

    const-string v20, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1318
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Migration from 1.0 already done"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1409
    if-eqz v10, :cond_0

    .line 1410
    :goto_0
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1414
    .end local v16           #migrationChecked:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1322
    .restart local v16       #migrationChecked:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v11, "dmappmgr.db"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1324
    .local v11, dmappmgrDBPath:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 1330
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1331
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "No need to migrate"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1333
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1409
    if-eqz v10, :cond_0

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v12

    .line 1327
    .local v12, e:Ljava/lang/Exception;
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "create or open dmappmgr EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1402
    .end local v11           #dmappmgrDBPath:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v16           #migrationChecked:Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 1403
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Migration v1 to v2.1 EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1409
    if-eqz v10, :cond_2

    .line 1410
    .end local v12           #e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1413
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1338
    .restart local v11       #dmappmgrDBPath:Ljava/lang/String;
    .restart local v16       #migrationChecked:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "migrateFromV1"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1345
    .local v7, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_5

    const/4 v9, 0x0

    .line 1346
    .local v9, count:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    .line 1347
    .local v4, activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .local v5, activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5
    if-ge v15, v9, :cond_6

    .line 1349
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1350
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    .local v8, cn:Landroid/content/ComponentName;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1353
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 1355
    .local v13, edai:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 1356
    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 1357
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Enterprise Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    .end local v13           #edai:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 1345
    .end local v4           #activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5           #activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v9           #count:I
    .end local v15           #i:I
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    goto/16 :goto_4

    .line 1364
    .restart local v4       #activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v5       #activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .restart local v9       #count:I
    .restart local v15       #i:I
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_7

    .line 1365
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1409
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .line 1368
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 1370
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1409
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .line 1373
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1375
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1376
    .local v6, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1377
    .local v18, uid:I
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Start migration for : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1384
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "adminUid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string v20, "adminName"

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v20, "canRemove"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    const-string v22, "ADMIN"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1393
    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1Setting(I)Z

    .line 1394
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z

    .line 1395
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1409
    .end local v6           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v18           #uid:I
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_9
    :goto_6
    if-eqz v10, :cond_2

    goto/16 :goto_3

    .line 1396
    .restart local v6       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v18       #uid:I
    .restart local v19       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v14

    .line 1397
    .local v14, ex:Ljava/lang/Exception;
    :try_start_7
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Setting Migration EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    .line 1409
    .end local v4           #activeAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v5           #activeEdmAdmins:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v6           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v7           #avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #count:I
    .end local v11           #dmappmgrDBPath:Ljava/lang/String;
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v15           #i:I
    .end local v16           #migrationChecked:Ljava/lang/String;
    .end local v18           #uid:I
    .end local v19           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v20

    if-eqz v10, :cond_a

    .line 1410
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1409
    :cond_a
    throw v20
.end method

.method private migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .locals 16
    .parameter "dmappmgrDB"
    .parameter "uid"

    .prologue
    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1277
    const-string v2, "DmAppInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1278
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1279
    const-string v1, "pkgname"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1280
    .local v13, pkgname:Ljava/lang/String;
    const-string v1, "installcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1281
    .local v12, installCount:I
    const-string v1, "uninstallcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1282
    .local v15, uninstallCount:I
    const-string v1, "controlstate"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1284
    .local v14, state:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1285
    .local v11, cv:Landroid/content/ContentValues;
    const-string v1, "packageName"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v1, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string v1, "applicationInstallationCount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1288
    const-string v1, "applicationUninstallationCount"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    const/4 v10, 0x0

    .line 1290
    .local v10, controlState:I
    const/4 v1, 0x1

    and-int/lit8 v2, v14, 0x1

    if-ne v1, v2, :cond_0

    .line 1291
    or-int/lit8 v10, v10, 0x2

    .line 1293
    :cond_0
    const/4 v1, 0x4

    and-int/lit8 v2, v14, 0x4

    if-ne v1, v2, :cond_1

    .line 1294
    or-int/lit8 v10, v10, 0x1

    .line 1296
    :cond_1
    const/4 v1, 0x2

    and-int/lit8 v2, v14, 0x2

    if-ne v1, v2, :cond_2

    .line 1297
    or-int/lit8 v10, v10, 0x4

    .line 1299
    :cond_2
    const-string v1, "controlState"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_0

    .line 1302
    .end local v10           #controlState:I
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #installCount:I
    .end local v13           #pkgname:Ljava/lang/String;
    .end local v14           #state:I
    .end local v15           #uninstallCount:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1303
    const-string v1, "DROP TABLE DmAppInfo;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1305
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1307
    const/4 v1, 0x1

    return v1
.end method

.method private migrateFromV1Setting(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1198
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "camera_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1199
    .local v0, value:I
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cameraEnabled"

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1201
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "microphone_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1202
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "microphoneEnabled"

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1204
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1205
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    if-ne v0, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1207
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1208
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    if-ne v0, v2, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1210
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_wap_push_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1212
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingPushEnabled"

    if-ne v0, v2, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1214
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_data_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1215
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingDataEnabled"

    if-ne v0, v2, :cond_8

    move v1, v2

    :goto_5
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1217
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_auto_sync_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1219
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingSyncEnabled"

    if-ne v0, v2, :cond_9

    move v1, v2

    :goto_6
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "usb_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1226
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    if-ne v0, v2, :cond_a

    move v1, v2

    :goto_7
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1229
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1230
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    if-ne v0, v2, :cond_b

    move v1, v2

    :goto_8
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1233
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "usb_debugging_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1235
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    if-ne v0, v2, :cond_c

    move v1, v2

    :goto_9
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1238
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1240
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    if-ne v0, v2, :cond_d

    move v1, v2

    :goto_a
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1243
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_capture_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1245
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "screenCaptureEnabled"

    if-ne v0, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, p1, v4, v5, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1253
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "camera_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1254
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "microphone_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1255
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1256
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1257
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_wap_push_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1258
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_data_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1259
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_auto_sync_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_2

    .line 1264
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1265
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1266
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_debugging_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1267
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1268
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_capture_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1271
    :cond_2
    return v2

    :cond_3
    move v1, v3

    .line 1199
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 1202
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 1205
    goto/16 :goto_2

    :cond_6
    move v1, v3

    .line 1208
    goto/16 :goto_3

    :cond_7
    move v1, v3

    .line 1212
    goto/16 :goto_4

    :cond_8
    move v1, v3

    .line 1215
    goto/16 :goto_5

    :cond_9
    move v1, v3

    .line 1219
    goto/16 :goto_6

    :cond_a
    move v1, v3

    .line 1226
    goto/16 :goto_7

    :cond_b
    move v1, v3

    .line 1230
    goto/16 :goto_8

    :cond_c
    move v1, v3

    .line 1235
    goto/16 :goto_9

    :cond_d
    move v1, v3

    .line 1240
    goto/16 :goto_a
.end method

.method private reassignMdmPermissions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1454
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1455
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1456
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1457
    .local v1, enterpriseApkPath:Ljava/lang/String;
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enterpriseApkPath : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v4

    .line 1459
    .local v4, remove:I
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDM Permissions Removed from System : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v4, v5, :cond_0

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    .end local v1           #enterpriseApkPath:Ljava/lang/String;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #remove:I
    :goto_1
    return-void

    .restart local v1       #enterpriseApkPath:Ljava/lang/String;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v4       #remove:I
    :cond_0
    move v5, v6

    .line 1459
    goto :goto_0

    .line 1462
    .end local v1           #enterpriseApkPath:Ljava/lang/String;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #remove:I
    :catch_0
    move-exception v0

    .line 1463
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;)V
    .locals 11
    .parameter "adminReceiver"

    .prologue
    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 402
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    .line 403
    monitor-exit p0

    .line 450
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 406
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 409
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    const-string v10, "Only system or itself can remove an EDM admin"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_1
    const/4 v1, 0x1

    .line 416
    .local v1, canRemove:Z
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "ADMIN"

    const-string v10, "canRemove"

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 424
    if-nez v1, :cond_2

    .line 425
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 449
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1           #canRemove:Z
    .end local v7           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 418
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v1       #canRemove:Z
    .restart local v7       #uid:I
    :catch_0
    move-exception v2

    .line 420
    .local v2, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :try_start_3
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "Admin not in database, something went wrong"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    monitor-exit p0

    goto :goto_0

    .line 429
    .end local v2           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 432
    .local v4, ident:J
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 433
    .local v6, ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v8, v7}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V

    goto :goto_1

    .line 437
    .end local v6           #ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_3
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    .line 439
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    .line 444
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 445
    .restart local v6       #ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v8, v7}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V

    goto :goto_2

    .line 448
    .end local v6           #ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private runAdminUpdate()V
    .locals 2

    .prologue
    .line 767
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    return-void
.end method

.method private declared-synchronized selfUpdate()V
    .locals 13

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    .line 779
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "selfUpdate in progress"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 783
    :cond_1
    :try_start_1
    const-string v9, "self_update_admin_component"

    const-string v10, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, cNames:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 787
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "nothing to selfUpdate"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 893
    .end local v4           #cNames:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 894
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Upgrade Admin Ex: "

    invoke-static {v9, v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 778
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 791
    .restart local v4       #cNames:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, admins:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v5, v1, v9

    .line 795
    .local v5, component:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 798
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 800
    .local v0, activeComponent:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 803
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/system/selfUpdateApks/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, destFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    .local v2, apkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_4

    .line 808
    :cond_3
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Cannot read or is not a file : /data/system/selfUpdateApks/"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_4
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 816
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 817
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 822
    :goto_1
    :try_start_5
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v9

    if-eqz v9, :cond_5

    .line 824
    :try_start_6
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Waiting..."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-wide/16 v9, 0x1388

    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 826
    :catch_1
    move-exception v9

    goto :goto_1

    .line 829
    :cond_5
    :try_start_7
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Finished Waiting."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v9, "application_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/ApplicationPolicy;

    .line 837
    .local v3, appPolicy:Lcom/android/server/enterprise/ApplicationPolicy;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Uninstall of old apk"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v9, -0x1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 841
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Install of new apk"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 843
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v10, p0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 819
    .end local v3           #appPolicy:Lcom/android/server/enterprise/ApplicationPolicy;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v9

    goto :goto_1

    .line 818
    :catch_3
    move-exception v9

    goto :goto_1
.end method

.method private sendMigrationIntent(Z)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.ENTERPRISE_MIGRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, i:Landroid/content/Intent;
    const-string v1, "currentVersion"

    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    const-string v1, "migrationResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    return-void
.end method

.method private verifyEnterprisePayload(I)Z
    .locals 9
    .parameter "uid"

    .prologue
    .line 924
    const/4 v4, 0x0

    .line 925
    .local v4, verified:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 927
    .local v2, ident:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 929
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    .line 930
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin owned by uid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catch_0
    move-exception v1

    .line 938
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not retrieve admin info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    return v4

    .line 933
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    .line 934
    .local v5, verify:I
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Payload Verified : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 940
    .end local v0           #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v5           #verify:I
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 934
    .restart local v0       #admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v5       #verify:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .locals 8
    .parameter "reqPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, exceptionItem:Ljava/lang/SecurityException;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 253
    .local v4, uid:I
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 295
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 259
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_1

    .line 260
    new-instance v2, Ljava/lang/SecurityException;

    .end local v2           #exceptionItem:Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v2       #exceptionItem:Ljava/lang/SecurityException;
    throw v2

    .line 263
    :cond_1
    const/4 v3, 0x0

    .line 266
    .local v3, permissionGranted:Z
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 268
    or-int/lit8 v3, v3, 0x1

    .line 270
    .end local v3           #permissionGranted:Z
    :cond_2
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is permission granted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    if-nez v3, :cond_3

    .line 286
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin  does not have "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "could not check calling permission"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "enforceActiveAdminDualPermission >>>"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 308
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 311
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    .local v0, N:I
    if-gtz v0, :cond_0

    .line 575
    const/4 v2, 0x0

    monitor-exit p0

    .line 581
    :goto_0
    return-object v2

    .line 577
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 579
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 582
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAdminRemovable()Z
    .locals 6

    .prologue
    .line 613
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 614
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 616
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "ADMIN"

    const-string v5, "canRemove"

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 622
    :goto_0
    return v2

    .line 618
    :catch_0
    move-exception v1

    .line 620
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Admin not in database, something went wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 1
    .parameter "comp"
    .parameter "result"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 587
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1099
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1103
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "adminReceiver"
    .parameter "policyId"

    .prologue
    .line 316
    const/16 v1, 0x15

    if-ge p2, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 320
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 321
    .local v0, info:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_1

    .line 322
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "adminReceiver"

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "adminReceiver"

    .prologue
    .line 1420
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1421
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    .line 1422
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1424
    :cond_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1425
    .local v3, uid:I
    const/4 v2, 0x1

    .line 1427
    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ADMIN"

    const-string v6, "canRemove"

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1433
    :goto_0
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminRemovable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    return v2

    .line 1429
    :catch_0
    move-exception v1

    .line 1431
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Admin not in database, something went wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1113
    monitor-enter p0

    .line 1114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1116
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    const/4 v2, 0x1

    monitor-exit p0

    .line 1121
    :goto_1
    return v2

    .line 1116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1121
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .line 1122
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "adminReceiver"

    .prologue
    .line 381
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "removeActiveAdmin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "could not remove activie admin , permisson not granted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "adminReceiver"

    .prologue
    .line 394
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "removeActiveAdminFromDpm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 397
    return-void
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .locals 14
    .parameter "apkFilePath"

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x3

    const/4 v10, -0x1

    .line 686
    monitor-enter p0

    :try_start_0
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "apkFilePath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 689
    .local v0, activeComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 690
    const/4 v9, -0x2

    .line 763
    :goto_0
    monitor-exit p0

    return v9

    .line 693
    :cond_0
    if-nez p1, :cond_3

    .line 697
    .end local p1
    .local v2, apkFilePath:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_4

    :cond_2
    move-object p1, v2

    .line 698
    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto :goto_0

    .line 693
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-lez v11, :cond_1

    move-object v2, p1

    goto :goto_1

    .line 700
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_4
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v1, apkFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_6

    .line 702
    :cond_5
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read or is not a file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    .line 703
    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto :goto_0

    .line 707
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/ApplicationPolicy;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 709
    .local v7, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_7

    move-object p1, v2

    .line 710
    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto :goto_0

    .line 713
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_7
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 714
    const/4 v9, -0x4

    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto :goto_0

    .line 719
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_8
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 721
    const/4 v9, -0x5

    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto :goto_0

    .line 723
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_9
    const-string v9, "self_update_admin_component"

    const-string v11, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, cNames:Ljava/lang/String;
    const/4 v8, 0x0

    .line 727
    .local v8, storeString:Ljava/lang/String;
    if-nez v3, :cond_d

    .line 728
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 737
    :cond_a
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/system/selfUpdateApks/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".apk"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    .local v5, destFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    .local v4, destFile:Ljava/io/File;
    if-eqz v4, :cond_e

    .line 742
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_b

    .line 743
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 744
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1ed

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 750
    :cond_b
    const-string v9, "self_update_admin_component"

    const-string v11, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v8, v11}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_f

    :cond_c
    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    move v9, v10

    .line 752
    goto/16 :goto_0

    .line 731
    .end local v4           #destFile:Ljava/io/File;
    .end local v5           #destFilePath:Ljava/lang/String;
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_d
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Pending"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .restart local v4       #destFile:Ljava/io/File;
    .restart local v5       #destFilePath:Ljava/lang/String;
    :cond_e
    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    move v9, v10

    .line 747
    goto/16 :goto_0

    .line 754
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :cond_f
    const/16 v9, 0x1a4

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v5, v9, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 756
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 763
    const/4 v9, 0x0

    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto/16 :goto_0

    .line 758
    .end local v1           #apkFile:Ljava/io/File;
    .end local v3           #cNames:Ljava/lang/String;
    .end local v4           #destFile:Ljava/io/File;
    .end local v5           #destFilePath:Ljava/lang/String;
    .end local v7           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v8           #storeString:Ljava/lang/String;
    .end local p1
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 759
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Ex: "

    invoke-static {v9, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    move v9, v10

    .line 761
    goto/16 :goto_0

    .line 686
    .end local v0           #activeComponent:Landroid/content/ComponentName;
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    monitor-exit p0

    throw v9

    .end local p1
    .restart local v0       #activeComponent:Landroid/content/ComponentName;
    .restart local v2       #apkFilePath:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object p1, v2

    .end local v2           #apkFilePath:Ljava/lang/String;
    .restart local p1
    goto :goto_3
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 11
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 332
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 334
    .local v0, admin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    .line 335
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 337
    :cond_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 338
    .local v6, uid:I
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 339
    .local v1, compName:Landroid/content/ComponentName;
    monitor-enter p0

    .line 340
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v3

    .line 342
    .local v3, ident:J
    if-nez p2, :cond_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 343
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Admin is already added"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 376
    .end local v3           #ident:J
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 346
    .restart local v3       #ident:J
    :cond_1
    if-nez p2, :cond_2

    .line 348
    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v8, "adminName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v8, "canRemove"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 357
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v10, "ADMIN"

    invoke-virtual {v8, v9, v10, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 362
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_2
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 363
    .local v5, ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v8, v6}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_0

    .line 368
    .end local v5           #ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 376
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 377
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .locals 5
    .parameter "removable"

    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 599
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Admin is not active"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "canRemove"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 604
    .local v1, result:Z
    return v1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 634
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "systemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "InternalHandlerThread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 638
    .local v3, thread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 639
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    .line 641
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1()V

    .line 642
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    .line 645
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 646
    .local v2, ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v4}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_0

    .line 649
    .end local v2           #ps:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isFirmwareChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->reassignMdmPermissions()V

    .line 652
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 653
    .local v0, admin:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z

    goto :goto_1

    .line 655
    .end local v0           #admin:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_2
    return-void
.end method
