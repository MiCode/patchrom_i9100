.class public Lcom/android/server/enterprise/PhoneRestrictionPolicy;
.super Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCheckboxPreviousState:Z

.field private mDataLimitEnabled:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 73
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 77
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 81
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 83
    return-void
.end method

.method private blockDataNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1506
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1508
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 1509
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Connectivity Manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :goto_0
    return v1

    .line 1512
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1514
    iput-boolean v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 1515
    iget-boolean v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .line 1516
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_1
    move v1, v2

    .line 1518
    goto :goto_0
.end method

.method private dataLimitCounter(Ljava/lang/String;J)V
    .locals 5
    .parameter "period"
    .parameter "totalBytes"

    .prologue
    .line 1490
    const-wide/16 v1, 0x0

    .line 1492
    .local v1, storageValue:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1496
    :goto_0
    add-long/2addr v1, p2

    .line 1497
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1498
    return-void

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private enforcePhoneApp()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrAdmin()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 110
    :cond_0
    return-void
.end method

.method private enforcePhonePermission()I
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSms()V
    .locals 2

    .prologue
    .line 679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method private getDataCheckboxState()Z
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "allAdmins"
    .parameter "patternType"

    .prologue
    .line 330
    const/4 v5, 0x0

    .line 331
    .local v5, result:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 333
    .local v0, adminUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v0, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .end local v0           #adminUid:I
    :cond_0
    :goto_0
    return-object v5

    .line 336
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 338
    .local v4, restrictionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .line 339
    .local v1, allRestriction:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 340
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 342
    .end local v3           #regex:Ljava/lang/String;
    :cond_2
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getSmsMmsAllowed(Ljava/lang/String;)Z
    .locals 6
    .parameter "field"

    .prologue
    .line 1626
    const/4 v1, 0x1

    .line 1627
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1629
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

    .line 1630
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1631
    move v1, v2

    .line 1635
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method private isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "phoneNumber"
    .parameter "policy"

    .prologue
    .line 273
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 277
    .local v4, patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p1, :cond_1

    .line 278
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    .local v5, regex:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 280
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 281
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    const/4 v6, 0x0

    .line 289
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #match:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #regex:Ljava/lang/String;
    :goto_0
    return v6

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.isNumberAllowed() - exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private putDataCheckboxState(Z)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private restorePacketDataNetworkSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1527
    iget-boolean v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1528
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1530
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 1531
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Connectivity Manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 1534
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1535
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1537
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 1538
    iget-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_2
    move v1, v2

    .line 1540
    goto :goto_0
.end method

.method private updateDateAndCounters()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1144
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1147
    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1148
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1149
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1150
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1154
    .local v1, calendarDay:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1158
    .local v3, calendarWeek:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1162
    .local v2, calendarMonth:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1165
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1168
    .local v4, time:J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1169
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1171
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1173
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1177
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1182
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1184
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1187
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1193
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1196
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1198
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1201
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1206
    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return-void
.end method

.method private updateDateAndCountersSms()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 771
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 774
    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 775
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 776
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 777
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 780
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 781
    .local v1, calendarDay:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 784
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 785
    .local v3, calendarWeek:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 788
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 789
    .local v2, calendarMonth:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 791
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 793
    .local v4, time:J
    const-string v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 796
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 800
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 809
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 811
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 820
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 823
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 825
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 828
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 833
    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void
.end method


# virtual methods
.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 161
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 166
    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 405
    const/4 v1, 0x0

    const-string v2, "smsRestrictionIncomingPattern"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 410
    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 11

    .prologue
    .line 1021
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 1023
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1024
    const/4 v4, 0x0

    .line 1063
    :cond_0
    :goto_0
    return v4

    .line 1026
    :cond_1
    const/4 v4, 0x0

    .line 1027
    .local v4, ret:Z
    const/4 v0, 0x0

    .line 1028
    .local v0, countDay:I
    const/4 v2, 0x0

    .line 1029
    .local v2, countWeek:I
    const/4 v1, 0x0

    .line 1030
    .local v1, countMonth:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1033
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1035
    .local v5, strCountDay:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, strCountWeek:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1039
    .local v6, strCountMonth:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 1041
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1042
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1043
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1049
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1050
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1053
    add-int/lit8 v2, v2, 0x1

    .line 1054
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1058
    add-int/lit8 v1, v1, 0x1

    .line 1059
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1062
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v3

    .line 1045
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNumberOfIncomingSms()Z
    .locals 8

    .prologue
    .line 586
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    .line 588
    const/4 v3, 0x0

    .line 589
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 613
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .line 593
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 595
    .local v0, countDay:I
    add-int/lit8 v0, v0, 0x1

    .line 596
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 599
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 601
    .local v2, countWeek:I
    add-int/lit8 v2, v2, 0x1

    .line 602
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 606
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, countMonth:I
    add-int/lit8 v1, v1, 0x1

    .line 609
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 612
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 613
    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 11

    .prologue
    .line 1072
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 1074
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1075
    const/4 v4, 0x0

    .line 1114
    :cond_0
    :goto_0
    return v4

    .line 1077
    :cond_1
    const/4 v4, 0x0

    .line 1078
    .local v4, ret:Z
    const/4 v0, 0x0

    .line 1079
    .local v0, countDay:I
    const/4 v2, 0x0

    .line 1080
    .local v2, countWeek:I
    const/4 v1, 0x0

    .line 1081
    .local v1, countMonth:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1084
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1086
    .local v5, strCountDay:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1088
    .local v7, strCountWeek:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1090
    .local v6, strCountMonth:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 1092
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1093
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1094
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1100
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1101
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1104
    add-int/lit8 v2, v2, 0x1

    .line 1105
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1109
    add-int/lit8 v1, v1, 0x1

    .line 1110
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1113
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v3

    .line 1096
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    .line 617
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    .line 619
    const/4 v3, 0x0

    .line 620
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 644
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .line 624
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 626
    .local v0, countDay:I
    add-int/lit8 v0, v0, 0x1

    .line 627
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 630
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 632
    .local v2, countWeek:I
    add-int/lit8 v2, v2, 0x1

    .line 633
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 637
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 639
    .local v1, countMonth:I
    add-int/lit8 v1, v1, 0x1

    .line 640
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 643
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 644
    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 152
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 157
    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 391
    const/4 v1, 0x0

    const-string v2, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 396
    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public allowIncomingMms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    .line 1606
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 1607
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowIncomingMms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowIncomingSms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 1585
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowIncomingSms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowOutgoingMms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 1613
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowOutgoingMms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowOutgoingSms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 1591
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowOutgoingSms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 12
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 231
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 232
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v8

    .line 236
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v9

    .line 237
    goto :goto_0

    .line 240
    :cond_2
    const-string v10, "incomingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 243
    .local v0, canCall:Z
    const/4 v7, 0x0

    .line 244
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 245
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 246
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v4

    .line 247
    .local v4, limitDay:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, countDay:I
    if-lt v1, v4, :cond_3

    if-ge v4, v8, :cond_6

    .line 250
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v6

    .line 251
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 254
    .local v3, countWeek:I
    if-lt v3, v6, :cond_4

    if-ge v6, v8, :cond_6

    .line 255
    :cond_4
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v5

    .line 256
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 259
    .local v2, countMonth:I
    if-lt v2, v5, :cond_5

    if-ge v5, v8, :cond_6

    .line 260
    :cond_5
    const/4 v7, 0x1

    .line 267
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_6
    :goto_1
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz v0, :cond_7

    if-nez v7, :cond_0

    :cond_7
    move v8, v9

    goto :goto_0

    .line 265
    :cond_8
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 13
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 689
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 690
    const-string v10, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 693
    .local v0, canReceive:Z
    const/4 v7, 0x0

    .line 694
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 695
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 697
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v4

    .line 698
    .local v4, limitDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 701
    .local v1, countDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-lt v1, v4, :cond_0

    if-ge v4, v8, :cond_3

    .line 703
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v6

    .line 704
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 706
    .local v3, countWeek:I
    if-lt v3, v6, :cond_1

    if-ge v6, v8, :cond_3

    .line 707
    :cond_1
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v5

    .line 708
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 711
    .local v2, countMonth:I
    if-lt v2, v5, :cond_2

    if-ge v5, v8, :cond_3

    .line 712
    :cond_2
    const/4 v7, 0x1

    .line 713
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canIncomingSms - limit = true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    :goto_1
    return v8

    .line 718
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move v8, v9

    .line 722
    goto :goto_1
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 12
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 190
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 191
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v8

    .line 195
    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v9

    .line 196
    goto :goto_0

    .line 199
    :cond_2
    const-string v10, "outgoingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 202
    .local v0, canCall:Z
    const/4 v7, 0x0

    .line 203
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 204
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 205
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v4

    .line 206
    .local v4, limitDay:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, countDay:I
    if-lt v1, v4, :cond_3

    if-ge v4, v8, :cond_6

    .line 209
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v6

    .line 210
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 213
    .local v3, countWeek:I
    if-lt v3, v6, :cond_4

    if-ge v6, v8, :cond_6

    .line 214
    :cond_4
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v5

    .line 215
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, countMonth:I
    if-lt v2, v5, :cond_5

    if-ge v5, v8, :cond_6

    .line 219
    :cond_5
    const/4 v7, 0x1

    .line 226
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_6
    :goto_1
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "PhoneRestrictionPolicy.canOutgoingCall >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz v0, :cond_7

    if-nez v7, :cond_0

    :cond_7
    move v8, v9

    goto :goto_0

    .line 224
    :cond_8
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 13
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 730
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 731
    const-string v10, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 734
    .local v0, canSend:Z
    const/4 v7, 0x0

    .line 735
    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 736
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 738
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v4

    .line 739
    .local v4, limitDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 742
    .local v1, countDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    if-lt v1, v4, :cond_0

    if-ge v4, v8, :cond_3

    .line 744
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v6

    .line 745
    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 747
    .local v3, countWeek:I
    if-lt v3, v6, :cond_1

    if-ge v6, v8, :cond_3

    .line 748
    :cond_1
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v5

    .line 749
    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 752
    .local v2, countMonth:I
    if-lt v2, v5, :cond_2

    if-ge v5, v8, :cond_3

    .line 753
    :cond_2
    const/4 v7, 0x1

    .line 754
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canOutgoingSms - limit = true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_3
    :goto_0
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    :goto_1
    return v8

    .line 759
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move v8, v9

    .line 762
    goto :goto_1
.end method

.method public checkDataCallLimit()Z
    .locals 15

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1350
    iget-boolean v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v13, :cond_0

    .line 1351
    const/4 v13, 0x0

    .line 1391
    :goto_0
    return v13

    .line 1354
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v2

    .line 1355
    .local v2, dayLimit:J
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v11

    .line 1356
    .local v11, weekLimit:J
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v7

    .line 1358
    .local v7, monthLimit:J
    const-wide/16 v0, 0x0

    .line 1359
    .local v0, dayCurrent:J
    const-wide/16 v9, 0x0

    .line 1360
    .local v9, weekCurrent:J
    const-wide/16 v5, 0x0

    .line 1364
    .local v5, monthCurrent:J
    :try_start_0
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByDay"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1371
    :goto_1
    :try_start_1
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByWeek"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    .line 1378
    :goto_2
    :try_start_2
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallByteCountByMonth"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v5

    .line 1386
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v2

    if-gez v13, :cond_1

    cmp-long v13, v0, v2

    if-gtz v13, :cond_3

    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v11

    if-gez v13, :cond_2

    cmp-long v13, v9, v11

    if-gtz v13, :cond_3

    :cond_2
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v7

    if-gez v13, :cond_4

    cmp-long v13, v5, v7

    if-lez v13, :cond_4

    .line 1389
    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v4

    .line 1367
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1373
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 1374
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1380
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v4

    .line 1381
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1391
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 7
    .parameter "showMsg"

    .prologue
    .line 1318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1319
    .local v2, token:J
    const/4 v1, 0x0

    .line 1320
    .local v1, ret:Z
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1322
    :cond_0
    if-eqz p1, :cond_1

    .line 1323
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v0, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const v6, 0x10401e5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1328
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    .line 1332
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    return v1

    .line 1330
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    .line 648
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    .line 650
    const/4 v3, 0x0

    .line 651
    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .line 675
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .line 655
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 657
    .local v0, countDay:I
    add-int/lit8 v0, v0, -0x1

    .line 658
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 661
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 663
    .local v2, countWeek:I
    add-int/lit8 v2, v2, -0x1

    .line 664
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 668
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 670
    .local v1, countMonth:I
    add-int/lit8 v1, v1, -0x1

    .line 671
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 674
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 675
    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .locals 10
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 842
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " >>>> enableLimitNumberOfCalls "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 844
    .local v1, callingUid:I
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 866
    :goto_0
    return v6

    .line 847
    :cond_0
    const/4 v2, 0x1

    .line 848
    .local v2, ret:Z
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 849
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetCallsCount()Z

    .line 850
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 851
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 852
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 853
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 854
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 855
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 856
    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 858
    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 861
    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 865
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_1
    :goto_2
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "limitCallEnable"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    move v6, v5

    goto :goto_0

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #time:J
    :cond_2
    move v2, v6

    .line 858
    goto :goto_1

    :cond_3
    move v2, v6

    .line 861
    goto :goto_2

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_4
    move v5, v6

    .line 866
    goto :goto_3
.end method

.method public enableLimitNumberOfSms(Z)Z
    .locals 10
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 437
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " >>>> enableLimitNumberOfSMS "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 439
    .local v1, callingUid:I
    const/4 v2, 0x1

    .line 440
    .local v2, ret:Z
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetSmsCount()Z

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 444
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 445
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 446
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 447
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 448
    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 450
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 453
    :goto_0
    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 457
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_0
    :goto_1
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "limitSmsEnable"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    return v5

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #time:J
    :cond_1
    move v2, v6

    .line 450
    goto :goto_0

    :cond_2
    move v2, v6

    .line 453
    goto :goto_1

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_3
    move v5, v6

    .line 458
    goto :goto_2
.end method

.method public getDataCallLimitEnabled()Z
    .locals 7

    .prologue
    .line 1243
    const/4 v1, 0x0

    .line 1244
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableLimitDataCall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1247
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 1248
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1249
    move v1, v2

    .line 1253
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 9
    .parameter "allAdmins"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 303
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 304
    const/4 v5, 0x0

    .line 326
    :cond_0
    :goto_0
    return v5

    .line 306
    :cond_1
    const/4 v5, 0x0

    .line 308
    .local v5, result:Z
    if-nez p1, :cond_2

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 310
    .local v0, adminUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "emergencyCallOnly"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 313
    goto :goto_0

    .line 314
    .end local v0           #adminUid:I
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "emergencyCallOnly"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 317
    .local v4, restrictionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 318
    .local v1, block:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    const/4 v5, 0x1

    goto :goto_0

    .line 323
    .end local v1           #block:Ljava/lang/Boolean;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #restrictionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .line 324
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .locals 2
    .parameter "allAdmins"

    .prologue
    .line 133
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "incomingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 1
    .parameter "allAdmins"

    .prologue
    .line 365
    const-string v0, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimitOfDataCalls(I)J
    .locals 11
    .parameter "type"

    .prologue
    const-wide/16 v9, 0x0

    .line 1268
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 1269
    const/4 v1, 0x0

    .line 1271
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    packed-switch p1, :pswitch_data_0

    .line 1288
    const-wide/16 v2, -0x1

    .line 1297
    :cond_0
    return-wide v2

    .line 1273
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByDay"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1275
    const-wide/16 v2, 0x0

    .line 1290
    .local v2, res:J
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1291
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1292
    .local v4, value:J
    cmp-long v6, v4, v9

    if-eqz v6, :cond_1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    cmp-long v6, v2, v9

    if-nez v6, :cond_1

    .line 1293
    :cond_2
    move-wide v2, v4

    goto :goto_1

    .line 1278
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:J
    .end local v4           #value:J
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByWeek"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1280
    const-wide/16 v2, 0x0

    .line 1281
    .restart local v2       #res:J
    goto :goto_0

    .line 1283
    .end local v2           #res:J
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByMonth"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1285
    const-wide/16 v2, 0x0

    .line 1286
    .restart local v2       #res:J
    goto :goto_0

    .line 1271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfIncomingCalls(I)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    .line 919
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 920
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v2

    .line 923
    :cond_1
    const/4 v1, 0x0

    .line 925
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 927
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 929
    const/4 v2, 0x0

    .line 944
    .local v2, res:I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 945
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 946
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    .line 947
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 932
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 934
    const/4 v2, 0x0

    .line 935
    .restart local v2       #res:I
    goto :goto_1

    .line 937
    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 939
    const/4 v2, 0x0

    .line 940
    .restart local v2       #res:I
    goto :goto_1

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfIncomingSms(I)I
    .locals 7
    .parameter "type"

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    .line 528
    const/4 v2, -0x1

    .line 537
    :cond_0
    return v2

    .line 513
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 515
    const/4 v2, 0x0

    .line 530
    .local v2, res:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 531
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 532
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    .line 533
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 518
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 520
    const/4 v2, 0x0

    .line 521
    .restart local v2       #res:I
    goto :goto_0

    .line 523
    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 525
    const/4 v2, 0x0

    .line 526
    .restart local v2       #res:I
    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfOutgoingCalls(I)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    .line 980
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 981
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return v2

    .line 984
    :cond_1
    const/4 v1, 0x0

    .line 986
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 988
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 990
    const/4 v2, 0x0

    .line 1005
    .local v2, res:I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1006
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1007
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    .line 1008
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 993
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 995
    const/4 v2, 0x0

    .line 996
    .restart local v2       #res:I
    goto :goto_1

    .line 998
    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1000
    const/4 v2, 0x0

    .line 1001
    .restart local v2       #res:I
    goto :goto_1

    .line 986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfOutgoingSms(I)I
    .locals 7
    .parameter "type"

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 554
    const/4 v1, 0x0

    .line 556
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    .line 573
    const/4 v2, -0x1

    .line 582
    :cond_0
    return v2

    .line 558
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 560
    const/4 v2, 0x0

    .line 575
    .local v2, res:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 576
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 577
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    .line 578
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 563
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 565
    const/4 v2, 0x0

    .line 566
    .restart local v2       #res:I
    goto :goto_0

    .line 568
    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 570
    const/4 v2, 0x0

    .line 571
    .restart local v2       #res:I
    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .locals 2
    .parameter "allAdmins"

    .prologue
    .line 124
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "outgoingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 1
    .parameter "allAdmins"

    .prologue
    .line 355
    const-string v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 1

    .prologue
    .line 1618
    const-string v0, "allowIncomingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 1

    .prologue
    .line 1596
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 1597
    const-string v0, "allowIncomingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 876
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 877
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v3

    .line 880
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "limitCallEnable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 883
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 884
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 885
    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 886
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 6

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 465
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    const-string v5, "limitSmsEnable"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 468
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 470
    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    const/4 v3, 0x1

    .line 475
    .end local v0           #enable:Ljava/lang/Boolean;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isOutgoingMmsAllowed()Z
    .locals 1

    .prologue
    .line 1622
    const-string v0, "allowOutgoingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 1

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    .line 1602
    const-string v0, "allowOutgoingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1563
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDataLimitState()V

    .line 1568
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1578
    return-void
.end method

.method public removeIncomingCallRestriction()Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingSmsRestriction()Z
    .locals 1

    .prologue
    .line 382
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallRestriction()Z
    .locals 2

    .prologue
    .line 142
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingSmsRestriction()Z
    .locals 1

    .prologue
    .line 374
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetCallsCount()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1119
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 1120
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1135
    :goto_0
    return v0

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1125
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1127
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1129
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1131
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1133
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1135
    goto :goto_0
.end method

.method public resetDataCallLimitCounter()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1301
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 1302
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1304
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1306
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallByteCountByMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1308
    return v0
.end method

.method public resetSmsCount()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    .line 480
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 482
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 484
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 486
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 488
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 490
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 492
    return v0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .locals 10
    .parameter "status"

    .prologue
    const/4 v8, 0x0

    .line 1211
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 1212
    .local v1, callingUid:I
    const/4 v2, 0x1

    .line 1213
    .local v2, ret:Z
    if-eqz p1, :cond_0

    iget-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetDataCallLimitCounter()Z

    .line 1215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1216
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1217
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1218
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1219
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1220
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1221
    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1223
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1225
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1228
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "enableLimitDataCall"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v2, v7

    .line 1230
    if-eqz v2, :cond_2

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 1232
    iget-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_1

    .line 1233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1234
    .local v5, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    .line 1235
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1237
    .end local v5           #token:J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/DeviceInventory;->dataUsageTimerActivation()V

    .line 1239
    :cond_2
    return v2
.end method

.method public setEmergencyCallOnly(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 294
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 297
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "emergencyCallOnly"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    .line 180
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 182
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 185
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "incomingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 431
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "smsRestrictionIncomingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .line 1258
    .local v1, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .line 1260
    .local v6, ret:Z
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1262
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1264
    return v6
.end method

.method public setLimitOfIncomingCalls(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 899
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 900
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 908
    :goto_0
    return v3

    .line 903
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 905
    .local v1, ret:Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 908
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 905
    goto :goto_1

    :cond_2
    move v2, v3

    .line 908
    goto :goto_2
.end method

.method public setLimitOfIncomingSms(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 496
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 497
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 499
    .local v1, ret:Z
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 502
    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 499
    goto :goto_0

    :cond_1
    move v2, v3

    .line 502
    goto :goto_1
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 960
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 961
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 969
    :goto_0
    return v3

    .line 964
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 966
    .local v1, ret:Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 969
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 966
    goto :goto_1

    :cond_2
    move v2, v3

    .line 969
    goto :goto_2
.end method

.method public setLimitOfOutgoingSms(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 541
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 542
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 544
    .local v1, ret:Z
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 547
    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 544
    goto :goto_0

    :cond_1
    move v2, v3

    .line 547
    goto :goto_1
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    .line 170
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 172
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "outgoingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .line 420
    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "smsRestrictionOutgoingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1573
    return-void
.end method

.method public updateDataLimitState()V
    .locals 1

    .prologue
    .line 1555
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 1557
    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 13
    .parameter "bytes"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1400
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1402
    iget-boolean v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v6, :cond_0

    .line 1481
    :goto_0
    return-void

    .line 1407
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1408
    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1409
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1410
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1411
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1414
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1416
    .local v1, calendarDay:Ljava/util/Calendar;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1421
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1423
    .local v3, calendarWeek:Ljava/util/Calendar;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1428
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1430
    .local v2, calendarMonth:Ljava/util/Calendar;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1435
    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1438
    .local v4, time:J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1439
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1441
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1445
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1450
    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1452
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1458
    :cond_2
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 1461
    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1464
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallByteCountByMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1469
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-gez v6, :cond_5

    .line 1470
    const-string v6, "dataCallBytesCountByDay"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1471
    const-string v6, "dataCallBytesCountByWeek"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1472
    const-string v6, "dataCallByteCountByMonth"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 1476
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1477
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto/16 :goto_0

    .line 1479
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    goto/16 :goto_0

    .line 1432
    .end local v4           #time:J
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .line 1425
    .end local v2           #calendarMonth:Ljava/util/Calendar;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 1418
    .end local v3           #calendarWeek:Ljava/util/Calendar;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method
