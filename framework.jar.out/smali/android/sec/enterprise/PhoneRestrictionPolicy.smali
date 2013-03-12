.class public Landroid/sec/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNumberOfIncomingCalls()Z
    .locals 3

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingCalls()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 112
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfIncomingCalls returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 3

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingSms()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfIncomingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingCalls()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfOutgoingCalls returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 3

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingSms()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 184
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfOutgoingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialNumber"

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canIncomingCall returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 229
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canIncomingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialNumber"

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canOutgoingCall returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canOutgoingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 3

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->decreaseNumberOfOutgoingSms()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 201
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-decreaseNumberOfOutgoingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getEmergencyCallOnly returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getIncomingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 275
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getIncomingSmsRestriction returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 250
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getOutgoingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getOutgoingSmsRestriction returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 3

    .prologue
    .line 391
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingMmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    :goto_0
    return v1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIncomingMmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 3

    .prologue
    .line 311
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIncomingSmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 3

    .prologue
    .line 146
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isLimitNumberOfSmsEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isLimitNumberOfSmsEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOutgoingMmsAllowed()Z
    .locals 3

    .prologue
    .line 431
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingMmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isOutgoingMmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 3

    .prologue
    .line 351
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 355
    :goto_0
    return v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isOutgoingSmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x1

    goto :goto_0
.end method
