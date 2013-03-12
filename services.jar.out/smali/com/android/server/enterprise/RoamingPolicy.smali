.class public Lcom/android/server/enterprise/RoamingPolicy;
.super Landroid/app/enterprise/IRoamingPolicy$Stub;
.source "RoamingPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final NON_ROAMING_AUTO_SYNC_SETTING:Ljava/lang/String; = "NonRoamingAutoSyncSetting"

.field private static final ROAMING_POLICY_PREF:Ljava/lang/String; = "RoamingPolicyPref"

.field private static final TAG:Ljava/lang/String; = "RoamingPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private final phoneStateListner:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;-><init>()V

    .line 222
    new-instance v0, Lcom/android/server/enterprise/RoamingPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/RoamingPolicy$1;-><init>(Lcom/android/server/enterprise/RoamingPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->phoneStateListner:Landroid/telephony/PhoneStateListener;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 114
    iput-object p1, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 120
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 123
    invoke-virtual {p0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->registerRoamingListener()V

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/RoamingPolicy;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/RoamingPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->storeUserAutoSyncSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/RoamingPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->restoreUserAutoSyncSetting()V

    return-void
.end method

.method private deregisterRoamingListener()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/RoamingPolicy;->phoneStateListner:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 147
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->restoreUserAutoSyncSetting()V

    .line 150
    return-void
.end method

.method private enforceRoamingPermission()I
    .locals 2

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private registerRoamingListener()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/RoamingPolicy;->phoneStateListner:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 138
    return-void
.end method

.method private restoreUserAutoSyncSetting()V
    .locals 5

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v3, "RoamingPolicyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const-string v2, "RoamingPolicy"

    const-string v3, "restoreUserAutoSyncSetting"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "NonRoamingAutoSyncSetting"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private storeUserAutoSyncSetting()V
    .locals 5

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    const-string v3, "RoamingPolicyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const-string v2, "RoamingPolicy"

    const-string v3, "storeUserAutoSyncSetting"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 7

    .prologue
    .line 579
    const/4 v1, 0x1

    .line 582
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 588
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 591
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 594
    move v1, v2

    .line 606
    .end local v2           #value:Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataRoamingEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 609
    return v1
.end method

.method public isRoamingPushEnabled()Z
    .locals 7

    .prologue
    .line 480
    const/4 v1, 0x1

    .line 483
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingPushEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 489
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 492
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 495
    move v1, v2

    .line 507
    .end local v2           #value:Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingPushEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 510
    return v1
.end method

.method public isRoamingSyncEnabled()Z
    .locals 7

    .prologue
    .line 384
    const/4 v1, 0x1

    .line 387
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingSyncEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 393
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 396
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 399
    move v1, v2

    .line 411
    .end local v2           #value:Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingSyncEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 414
    return v1
.end method

.method public isRoamingVoiceCallsEnabled()Z
    .locals 7

    .prologue
    .line 714
    const/4 v1, 0x1

    .line 720
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingVoiceCallsEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 732
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 735
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 738
    move v1, v2

    .line 750
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 624
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 636
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 659
    return-void
.end method

.method public setRoamingData(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->enforceRoamingPermission()I

    move-result v0

    .line 537
    .local v0, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "ROAMING"

    const-string v5, "roamingDataEnabled"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 543
    .local v2, result:Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.sec.MDM_ROAMING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, i:Landroid/content/Intent;
    const-string v3, "roamingData"

    invoke-virtual {p0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    iget-object v3, p0, Lcom/android/server/enterprise/RoamingPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataRoaming : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 555
    return v2
.end method

.method public setRoamingPush(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->enforceRoamingPermission()I

    move-result v0

    .line 441
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ROAMING"

    const-string v4, "roamingPushEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 447
    .local v1, result:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoamingPush : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 450
    return v1
.end method

.method public setRoamingSync(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->enforceRoamingPermission()I

    move-result v0

    .line 330
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingSyncEnabled"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 336
    .local v1, result:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRoamingSync : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 343
    .local v2, token:J
    if-nez p1, :cond_0

    .line 346
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->registerRoamingListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    return v1

    .line 352
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->deregisterRoamingListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setRoamingVoiceCalls(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/server/enterprise/RoamingPolicy;->enforceRoamingPermission()I

    move-result v0

    .line 684
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ROAMING"

    const-string v4, "roamingVoiceCallsEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 693
    .local v1, result:Z
    return v1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method
