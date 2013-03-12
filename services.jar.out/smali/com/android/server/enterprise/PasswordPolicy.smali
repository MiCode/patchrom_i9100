.class public Lcom/android/server/enterprise/PasswordPolicy;
.super Landroid/app/enterprise/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


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
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;-><init>()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 363
    new-instance v1, Lcom/android/server/enterprise/PasswordPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/PasswordPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 94
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 95
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 104
    return-void
.end method

.method private ChooseNewPasswordOwner()I
    .locals 17

    .prologue
    .line 759
    const/4 v13, -0x1

    .line 760
    .local v13, validAdmin:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "ADMIN"

    const-string v16, "adminUid"

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 763
    .local v2, adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordOwnerHistory"

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 765
    .local v12, ownerHistory:Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 766
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v5, historyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 769
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

    .line 770
    .local v1, admin:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 773
    .end local v1           #admin:Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 776
    const/4 v8, 0x0

    .line 777
    .local v8, isValidAdmin:Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .end local v7           #i$:I
    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_3

    if-nez v8, :cond_3

    .line 778
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

    .line 779
    .local v1, admin:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v15, v14, :cond_1

    .line 780
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 781
    const/4 v8, 0x1

    .line 786
    .end local v1           #admin:Ljava/lang/Integer;
    :cond_2
    if-nez v8, :cond_3

    .line 787
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 777
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 793
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 794
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
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

    .line 796
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

    .line 798
    .end local v1           #admin:Ljava/lang/Integer;
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 799
    .local v10, newHistory:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordOwnerHistory"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v15, "passwordPatternOwner"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 808
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

    .line 804
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

    .line 805
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
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/PasswordPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput p0, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/PasswordPolicy;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private addOwnerToStack(I)V
    .locals 4
    .parameter "callingUid"

    .prologue
    .line 841
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordPatternOwner"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 843
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, stack:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 845
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

    .line 849
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordOwnerHistory"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 850
    return-void

    .line 847
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private containsForbiddenData(Ljava/lang/String;)Z
    .locals 6
    .parameter "pwd"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 664
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v0

    .line 666
    .local v0, forbiddenStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 674
    :goto_0
    return v3

    .line 669
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 670
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v2           #s:Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 674
    goto :goto_0
.end method

.method private containsForbiddenNumericSequence(Ljava/lang/String;)Z
    .locals 13
    .parameter "pwd"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    .line 572
    .local v3, length:I
    if-nez v3, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v9

    .line 575
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\d(?=\\d{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",})"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 576
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 577
    .local v4, match:Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 579
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 583
    .local v8, start:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 584
    .local v0, c:C
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sub-int v1, v11, v0

    .line 585
    .local v1, charDiff:I
    if-nez v1, :cond_3

    move v7, v9

    .line 587
    .local v7, sequencePattern:I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v3, 0x1

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 588
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 590
    add-int v11, v0, v7

    int-to-char v0, v11

    .line 591
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 585
    .end local v2           #i:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #sequencePattern:I
    :cond_3
    if-lez v1, :cond_4

    move v7, v10

    goto :goto_1

    :cond_4
    const/4 v7, -0x1

    goto :goto_1

    .line 595
    .restart local v2       #i:I
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v7       #sequencePattern:I
    :cond_5
    add-int v11, v8, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v9, v10

    .line 596
    goto :goto_0
.end method

.method private containsMaxRepeatedCharacters(Ljava/lang/String;)Z
    .locals 12
    .parameter "pwd"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v7

    .line 712
    .local v7, rptCount:I
    if-nez v7, :cond_0

    move v8, v9

    .line 729
    :goto_0
    return v8

    .line 715
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 716
    .local v4, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 717
    .local v2, ca:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-char v1, v0, v5

    .line 718
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 719
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 720
    .local v3, cnt:I
    if-ne v3, v7, :cond_1

    .line 721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    move v8, v10

    .line 722
    goto :goto_0

    .line 724
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .end local v3           #cnt:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 726
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1           #c:C
    :cond_3
    move v8, v9

    .line 729
    goto :goto_0
.end method

.method private enforceSecurityPermission()I
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method private getCurrentPasswordOwner()I
    .locals 9

    .prologue
    .line 738
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "passwordPatternOwner"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, owner:Ljava/lang/String;
    const/4 v5, -0x1

    .line 740
    .local v5, validAdmin:I
    if-eqz v3, :cond_2

    .line 741
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 742
    .local v4, ownerAdmin:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "ADMIN"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 744
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

    .line 745
    .local v0, admin:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 746
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 751
    .end local v0           #admin:Ljava/lang/Integer;
    .end local v1           #adminList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #ownerAdmin:Ljava/lang/Integer;
    :goto_0
    return v6

    .line 749
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

    .line 751
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 128
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 128
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

    .line 129
    :catch_0
    move-exception v0

    .line 130
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
    .line 456
    :try_start_0
    const-string v8, "pkgName"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 458
    .local v6, pkgMgr:Landroid/content/pm/PackageManager;
    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 460
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

    .line 461
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

    .line 471
    :cond_0
    const-string v8, "PasswordPolicy"

    const-string v9, "**** An MDM Admin ****"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    const/4 v8, 0x1

    .line 480
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #perm:Ljava/lang/String;
    .end local v5           #pkg:Landroid/content/pm/PackageInfo;
    .end local v6           #pkgMgr:Landroid/content/pm/PackageManager;
    .end local v7           #pkgName:Ljava/lang/String;
    :goto_1
    return v8

    .line 460
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

    .line 476
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #perm:Ljava/lang/String;
    .end local v5           #pkg:Landroid/content/pm/PackageInfo;
    .end local v6           #pkgMgr:Landroid/content/pm/PackageManager;
    .end local v7           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 477
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "PasswordPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v8, "PasswordPolicy"

    const-string v9, "**** Not an MDM Admin ****"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private removeOwnerFromStack(I)V
    .locals 11
    .parameter "OwnerId"

    .prologue
    .line 816
    iget-object v9, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "passwordOwnerHistory"

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 817
    .local v8, stack:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 819
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, admins:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
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

    .line 822
    .local v0, admin:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 823
    .local v7, owner:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_0

    .line 824
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

    .line 821
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 827
    .end local v0           #admin:Ljava/lang/String;
    .end local v7           #owner:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 828
    .local v5, newStack:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 829
    const/4 v5, 0x0

    .line 833
    :goto_1
    iget-object v9, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "passwordOwnerHistory"

    invoke-virtual {v9, v10, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 835
    .end local v1           #admins:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #newStack:Ljava/lang/String;
    .end local v6           #newStackSb:Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 831
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

.method private updateCache()V
    .locals 3

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "passwordChangeRequested"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 855
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequestedCache:I

    .line 859
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequestedCache:I

    goto :goto_0
.end method


# virtual methods
.method public addRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 5
    .parameter "regex"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 197
    .local v0, callingUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    const/4 v2, 0x0

    .line 207
    :goto_0
    return v2

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, oldRegex:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 203
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

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 205
    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public deleteAllRestrictions()Z
    .locals 8

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 219
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordRequiredPattern"

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, oldRegex:Ljava/lang/String;
    const/4 v3, 0x1

    .line 222
    .local v3, ret:Z
    if-eqz v2, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordRequiredPattern"

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 225
    if-eqz v3, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getCurrentPasswordOwner()I

    move-result v1

    .line 227
    .local v1, currentOwner:I
    if-ne v1, v0, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->ChooseNewPasswordOwner()I

    .line 236
    .end local v1           #currentOwner:I
    :cond_0
    :goto_0
    return v3

    .line 231
    .restart local v1       #currentOwner:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PasswordPolicy;->removeOwnerFromStack(I)V

    goto :goto_0
.end method

.method public enforcePwdChange()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 317
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    .line 318
    const/4 v7, 0x1

    .line 319
    .local v7, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 320
    .local v8, token:J
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 322
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 323
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 324
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_0

    .line 325
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 326
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    .line 327
    .local v6, quality:I
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 328
    .local v5, minLength:I
    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v4

    .line 330
    .local v4, maxLength:I
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, it:Landroid/content/Intent;
    const-string v10, "lockscreen.password_type"

    invoke-virtual {v2, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v10, "lockscreen.password_min"

    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v10, "lockscreen.password_max"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v10, "lockscreen.password_old"

    const-string v11, "12345"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v10, "confirm_credentials"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const/high16 v10, 0x40

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    const/high16 v10, 0x80

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #maxLength:I
    .end local v5           #minLength:I
    .end local v6           #quality:I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    return v7

    .line 344
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 345
    const/4 v10, 0x3

    sput v10, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v10

    if-nez v10, :cond_2

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v10, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 353
    const/4 v10, 0x1

    sput v10, Lcom/android/server/enterprise/PasswordPolicy;->PwdChangeDelayed:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getForbiddenStrings(Z)Ljava/util/List;
    .locals 9
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 634
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string v8, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 639
    .local v2, forbiddenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 640
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v3, forbiddenStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 642
    .local v5, str:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 648
    .end local v2           #forbiddenList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #forbiddenStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 649
    .local v1, callingUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string v8, "passwordForbiddenStrings"

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, adminStrings:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 654
    .end local v0           #adminStrings:Ljava/lang/String;
    .end local v1           #callingUid:I
    :cond_1
    return-object v3
.end method

.method public getMaximumCharacterOccurences()I
    .locals 7

    .prologue
    .line 690
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordMaximumCharacterOccurences"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 692
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 693
    .local v0, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 694
    .local v2, value:I
    if-nez v0, :cond_1

    .line 695
    move v0, v2

    goto :goto_0

    .line 696
    :cond_1
    if-eqz v2, :cond_0

    if-le v0, v2, :cond_0

    .line 697
    move v0, v2

    goto :goto_0

    .line 700
    .end local v2           #value:I
    :cond_2
    return v0
.end method

.method public getMaximumFailedPasswordsForDisable()I
    .locals 7

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    .line 522
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordAttemptDeviceDisable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 524
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 525
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

    .line 526
    .local v2, value:I
    if-nez v1, :cond_1

    .line 527
    move v1, v2

    goto :goto_0

    .line 528
    :cond_1
    if-eqz v2, :cond_0

    if-le v1, v2, :cond_0

    .line 529
    move v1, v2

    goto :goto_0

    .line 532
    .end local v2           #value:I
    :cond_2
    return v1
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 7

    .prologue
    .line 551
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 553
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 554
    .local v1, length:I
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

    .line 555
    .local v2, value:I
    if-nez v1, :cond_1

    .line 556
    move v1, v2

    goto :goto_0

    .line 557
    :cond_1
    if-eqz v2, :cond_0

    if-le v1, v2, :cond_0

    .line 558
    move v1, v2

    goto :goto_0

    .line 561
    .end local v2           #value:I
    :cond_2
    return v1
.end method

.method public getPasswordChangeTimeout()I
    .locals 7

    .prologue
    .line 298
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordChangeTimeout"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 300
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 301
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

    .line 302
    .local v2, value:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 305
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 306
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 309
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

    .line 145
    iget-object v5, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string v7, "unlockDelay"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 147
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 148
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

    .line 149
    .local v2, value:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    .line 152
    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 155
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 158
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
    .line 245
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 246
    .local v0, callingUid:I
    if-eqz p1, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getCurrentPasswordOwner()I

    move-result v1

    .line 248
    .local v1, owner:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .end local v1           #owner:I
    :goto_0
    return-object v2

    .line 252
    .restart local v1       #owner:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 254
    .end local v1           #owner:I
    :cond_1
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
    .line 313
    iget v0, p0, Lcom/android/server/enterprise/PasswordPolicy;->isChangeRequestedCache:I

    return v0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .locals 6
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSystemUser()V

    .line 268
    const/4 v3, 0x1

    .line 269
    .local v3, result:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/PasswordPolicy;->containsForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 271
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/PasswordPolicy;->containsForbiddenData(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/PasswordPolicy;->containsMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, patternSet:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 277
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 278
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 279
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .end local v0           #match:Ljava/util/regex/Matcher;
    .end local v1           #pattern:Ljava/util/regex/Pattern;
    :cond_2
    move v4, v3

    .line 281
    goto :goto_0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 7

    .prologue
    .line 902
    const/4 v1, 0x1

    .line 903
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "screenLockPatternVisibility"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 906
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

    .line 907
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 908
    move v1, v2

    .line 912
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 864
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->updateCache()V

    .line 870
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 881
    return-void
.end method

.method public setForbiddenStrings(Ljava/util/List;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, forbiddenStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 613
    .local v0, callingUid:I
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 615
    .local v5, stringSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v4, sb:Ljava/lang/StringBuilder;
    if-nez p1, :cond_1

    .line 618
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string v8, "passwordForbiddenStrings"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 627
    .local v2, ret:Z
    return v2

    .line 620
    .end local v2           #ret:Z
    :cond_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 621
    .local v3, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setMaximumCharacterOccurrences(I)Z
    .locals 4
    .parameter "count"

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 682
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PASSWORD"

    const-string v3, "passwordMaximumCharacterOccurences"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public setMaximumFailedPasswordsForDisable(I)Z
    .locals 4
    .parameter "num"

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 509
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PASSWORD"

    const-string v3, "passwordAttemptDeviceDisable"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public setMaximumNumericSequenceLength(I)Z
    .locals 4
    .parameter "length"

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 541
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PASSWORD"

    const-string v3, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public setPasswordChangeTimeout(I)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 292
    .local v0, callingUid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "passwordChangeTimeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
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
    .line 137
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 138
    .local v0, callingUid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "unlockDelay"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
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
    .line 484
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSystemUser()V

    .line 485
    const/4 v1, 0x1

    .line 487
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "passwordChangeRequested"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 489
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->updateCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 6
    .parameter "regex"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 170
    .local v0, callingUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 171
    :cond_0
    const/4 v2, 0x0

    .line 185
    :cond_1
    :goto_0
    return v2

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "PASSWORD"

    const-string v5, "passwordRequiredPattern"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 175
    .local v2, ret:Z
    if-eqz v2, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->getCurrentPasswordOwner()I

    move-result v1

    .line 177
    .local v1, currentOwner:I
    if-eq v1, v0, :cond_1

    .line 180
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PasswordPolicy;->removeOwnerFromStack(I)V

    .line 182
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PasswordPolicy;->addOwnerToStack(I)V

    goto :goto_0
.end method

.method public setScreenLockPatternVisibilityEnabled(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    .line 884
    const/4 v3, 0x0

    .line 885
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 886
    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    .line 888
    .local v2, oldState:Z
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string v8, "screenLockPatternVisibility"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 891
    invoke-virtual {p0}, Lcom/android/server/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v1

    .line 893
    .local v1, newState:Z
    if-eq v1, v2, :cond_0

    .line 894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 895
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_pattern_visible_pattern"

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 896
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 898
    .end local v4           #token:J
    :cond_0
    return v3

    .line 895
    .restart local v4       #token:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/android/server/enterprise/PasswordPolicy;->updateCache()V

    .line 876
    return-void
.end method
