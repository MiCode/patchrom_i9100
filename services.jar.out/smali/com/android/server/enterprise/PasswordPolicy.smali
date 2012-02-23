.class public Lcom/android/server/enterprise/PasswordPolicy;
.super Landroid/app/enterprise/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"


# static fields
.field public static final MDM_PASSWORD_EXPIRING_NOTIFICATION:Ljava/lang/String; = "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

.field private static final PWD_CHANGE_CALL_CANCELLED:I = 0x2

.field private static final PWD_CHANGE_CALL_ENFORCED:I = 0x1

.field private static final PWD_CHANGE_CALL_NEW_PASSWORD:I = 0x3

.field private static final PWD_CHANGE_CALL_NONE:I = 0x0

.field private static PwdChangeDelayed:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PasswordPolicy"


# instance fields
.field private isChangeRequestedCache:I

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;-><init>()V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 309
    new-instance v1, Lcom/android/server/enterprise/PasswordPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/PasswordPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 51
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 52
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 53
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 63
    return-void
.end method

.method private ChooseNewPasswordOwner()I
    .locals 17

    .prologue
    .line 517
    const/4 v13, -0x1

    .line 518
    .local v13, validAdmin:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "ADMIN"

    const-string v16, "adminUid"

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 521
    .local v2, adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordOwnerHistory"

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 522
    .local v12, ownerHistory:Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 523
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v5, historyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, admins:[Ljava/lang/String;
    move-object v4, v3

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v4, v7

    .line 527
    .local v1, admin:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 530
    .end local v1           #admin:Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 533
    const/4 v8, 0x0

    .line 534
    .local v8, isValidAdmin:Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .end local v7           #i$:I
    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_3

    if-nez v8, :cond_3

    .line 535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 536
    .local v1, admin:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v15, v14, :cond_1

    .line 537
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 538
    const/4 v8, 0x1

    .line 543
    .end local v1           #admin:Ljava/lang/Integer;
    :cond_2
    if-nez v8, :cond_3

    .line 544
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 534
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 550
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 551
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v11, newHistorySb:Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 553
    .restart local v1       #admin:Ljava/lang/Integer;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 555
    .end local v1           #admin:Ljava/lang/Integer;
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 556
    .local v10, newHistory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordOwnerHistory"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordPatternOwner"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 563
    .end local v3           #admins:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #historyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isValidAdmin:Z
    .end local v9           #len$:I
    .end local v10           #newHistory:Ljava/lang/String;
    .end local v11           #newHistorySb:Ljava/lang/StringBuilder;
    :cond_5
    :goto_3
    return v13

    .line 559
    .restart local v3       #admins:[Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #historyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6       #i:I
    .restart local v8       #isValidAdmin:Z
    .restart local v9       #len$:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordOwnerHistory"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordPatternOwner"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput p0, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/PasswordPolicy;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private addOwnerToStack(I)V
    .locals 4
    .parameter "callingUid"

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordPatternOwner"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 596
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, stack:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 603
    return-void

    .line 600
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private enforceSecurityPermission()I
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    return-void
.end method

.method private getCurrentPasswordOwner()I
    .locals 9

    .prologue
    .line 496
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "passwordPatternOwner"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, owner:Ljava/lang/String;
    const/4 v5, -0x1

    .line 499
    .local v5, validAdmin:I
    if-eqz v3, :cond_2

    .line 500
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 501
    .local v4, ownerAdmin:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "ADMIN"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 503
    .local v1, adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 504
    .local v0, admin:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 505
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 510
    .end local v0           #admin:Ljava/lang/Integer;
    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #ownerAdmin:Ljava/lang/Integer;
    :goto_0
    return v6

    .line 508
    .restart local v1       #adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #ownerAdmin:Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->ChooseNewPasswordOwner()I

    move-result v5

    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #ownerAdmin:Ljava/lang/Integer;
    :cond_2
    move v6, v5

    .line 510
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PasswordPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMDMAdmin(Landroid/content/Intent;)Z
    .locals 10
    .parameter "intent"

    .prologue
    .line 409
    :try_start_0
    const-string v8, "pkgName"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 411
    .local v6, pkgMgr:Landroid/content/pm/PackageManager;
    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 413
    .local v5, pkg:Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 414
    .local v4, perm:Ljava/lang/String;
    const-string v8, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 425
    :cond_0
    const-string v8, "PasswordPolicy"

    const-string v9, "**** An MDM Admin ****"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    const/4 v8, 0x1

    .line 435
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #perm:Ljava/lang/String;
    .end local v5           #pkg:Landroid/content/pm/PackageInfo;
    .end local v6           #pkgMgr:Landroid/content/pm/PackageManager;
    .end local v7           #pkgName:Ljava/lang/String;
    :goto_1
    return v8

    .line 413
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #perm:Ljava/lang/String;
    .restart local v5       #pkg:Landroid/content/pm/PackageInfo;
    .restart local v6       #pkgMgr:Landroid/content/pm/PackageManager;
    .restart local v7       #pkgName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #perm:Ljava/lang/String;
    .end local v5           #pkg:Landroid/content/pm/PackageInfo;
    .end local v6           #pkgMgr:Landroid/content/pm/PackageManager;
    .end local v7           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "PasswordPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v8, "PasswordPolicy"

    const-string v9, "**** Not an MDM Admin ****"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private removeOwnerFromStack(I)V
    .locals 11
    .parameter "OwnerId"

    .prologue
    .line 570
    iget-object v9, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "passwordOwnerHistory"

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, stack:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 573
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, admins:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v6, newStackSb:Ljava/lang/StringBuilder;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 576
    .local v0, admin:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 577
    .local v7, owner:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_0

    .line 578
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    .end local v0           #admin:Ljava/lang/String;
    .end local v7           #owner:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, newStack:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 583
    const/4 v5, 0x0

    .line 587
    :goto_1
    iget-object v9, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "passwordOwnerHistory"

    invoke-virtual {v9, v10, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 589
    .end local v1           #admins:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #newStack:Ljava/lang/String;
    .end local v6           #newStackSb:Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 585
    .restart local v1       #admins:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #newStack:Ljava/lang/String;
    .restart local v6       #newStackSb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public addRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 5
    .parameter "regex"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 152
    .local v0, callingUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 153
    :cond_0
    const/4 v2, 0x0

    .line 163
    :goto_0
    return v2

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, oldRegex:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 161
    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public deleteAllRestrictions()Z
    .locals 8

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 175
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordRequiredPattern"

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, oldRegex:Ljava/lang/String;
    const/4 v3, 0x1

    .line 179
    .local v3, ret:Z
    if-eqz v2, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordRequiredPattern"

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 183
    if-eqz v3, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getCurrentPasswordOwner()I

    move-result v1

    .line 185
    .local v1, currentOwner:I
    if-ne v1, v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->ChooseNewPasswordOwner()I

    .line 192
    .end local v1           #currentOwner:I
    :cond_0
    :goto_0
    return v3

    .line 188
    .restart local v1       #currentOwner:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PasswordPolicy;->removeOwnerFromStack(I)V

    goto :goto_0
.end method

.method public enforcePwdChange()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 264
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    .line 265
    const/4 v7, 0x1

    .line 266
    .local v7, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 267
    .local v8, token:J
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 269
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 270
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 271
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_0

    .line 272
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 273
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    .line 274
    .local v6, quality:I
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 275
    .local v5, minLength:I
    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 277
    .local v4, maxLength:I
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, it:Landroid/content/Intent;
    const-string v10, "lockscreen.password_type"

    invoke-virtual {v2, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v10, "lockscreen.password_min"

    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v10, "lockscreen.password_max"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v10, "lockscreen.password_old"

    const-string v11, "12345"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v10, "confirm_credentials"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const/high16 v10, 0x40

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    const/high16 v10, 0x80

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #maxLength:I
    .end local v5           #minLength:I
    .end local v6           #quality:I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    return v7

    .line 290
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 291
    const/4 v10, 0x3

    sput v10, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0

    .line 294
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_2

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 299
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 300
    const/4 v10, 0x1

    sput v10, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDisable()I
    .locals 7

    .prologue
    .line 475
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordAttemptDeviceDisable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 477
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 478
    .local v1, lMaxNumFailedAttempt:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 480
    .local v2, value:I
    if-nez v1, :cond_1

    .line 482
    move v1, v2

    goto :goto_0

    .line 484
    :cond_1
    if-eqz v2, :cond_0

    if-le v1, v2, :cond_0

    .line 486
    move v1, v2

    goto :goto_0

    .line 489
    .end local v2           #value:I
    :cond_2
    return v1
.end method

.method public getPasswordChangeTimeout()I
    .locals 7

    .prologue
    .line 246
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordChangeTimeout"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 249
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 250
    .local v1, lowerTimeout:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 251
    .local v2, value:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 254
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 255
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 258
    .end local v2           #value:Ljava/lang/Integer;
    :cond_2
    if-gtz v1, :cond_3

    const/4 v1, 0x0

    .end local v1           #lowerTimeout:I
    :cond_3
    return v1
.end method

.method public getPasswordLockDelay()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 101
    iget-object v5, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string v7, "unlockDelay"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 104
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 105
    .local v1, lowerPeriod:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 106
    .local v2, value:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 109
    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 115
    .end local v2           #value:Ljava/lang/Integer;
    :cond_2
    if-gez v1, :cond_3

    move v1, v4

    .end local v1           #lowerPeriod:I
    :cond_3
    return v1
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .locals 5
    .parameter "allAdmins"

    .prologue
    .line 200
    if-eqz p1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getCurrentPasswordOwner()I

    move-result v1

    .line 202
    .local v1, owner:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .end local v1           #owner:I
    :goto_0
    return-object v2

    .line 206
    .restart local v1       #owner:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 208
    .end local v1           #owner:I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 209
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isChangeRequested()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequestedCache:I

    return v0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .locals 5
    .parameter "password"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSystemUser()V

    .line 224
    const/4 v3, 0x1

    .line 225
    .local v3, result:Z
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, patternSet:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 227
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 228
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 229
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 231
    .end local v0           #match:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    :cond_0
    return v3
.end method

.method public setMaximumFailedPasswordsForDisable(I)Z
    .locals 4
    .parameter "num"

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 464
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PASSWORD"

    const-string v3, "passwordAttemptDeviceDisable"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public setPasswordChangeTimeout(I)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 240
    .local v0, callingUid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "passwordChangeTimeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method public setPasswordLockDelay(I)Z
    .locals 4
    .parameter "time"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 94
    .local v0, callingUid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "unlockDelay"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method public setPwdChangeRequested(I)Z
    .locals 5
    .parameter "flag"

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSystemUser()V

    .line 439
    const/4 v1, 0x1

    .line 441
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "passwordChangeRequested"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    invoke-virtual {p0}, Lcom/android/server/enterprise/PasswordPolicy;->updateCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 6
    .parameter "regex"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 126
    .local v0, callingUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 127
    :cond_0
    const/4 v2, 0x0

    .line 141
    :cond_1
    :goto_0
    return v2

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "PASSWORD"

    const-string v5, "passwordRequiredPattern"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 131
    .local v2, ret:Z
    if-eqz v2, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getCurrentPasswordOwner()I

    move-result v1

    .line 133
    .local v1, currentOwner:I
    if-eq v1, v0, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PasswordPolicy;->removeOwnerFromStack(I)V

    .line 138
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PasswordPolicy;->addOwnerToStack(I)V

    goto :goto_0
.end method

.method public updateCache()V
    .locals 3

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordChangeRequested"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 609
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequestedCache:I

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequestedCache:I

    goto :goto_0
.end method
