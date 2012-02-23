.class public Landroid/app/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final LIMIT_NUMBER_OF_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_DATA_CALLS_BY_WEEK:I = 0x1

.field public static final LIMIT_NUMBER_OF_SMS_BY_DAY:I = 0x0

.field public static final LIMIT_NUMBER_OF_SMS_BY_MONTH:I = 0x2

.field public static final LIMIT_NUMBER_OF_SMS_BY_WEEK:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "phone_restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    .line 38
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "FAILED: mService = NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 239
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addIncomingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 475
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 477
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addIncomingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 482
    :goto_0
    return v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 772
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 777
    :goto_0
    return v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 3

    .prologue
    .line 996
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfIncomingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1003
    :goto_0
    return v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 3

    .prologue
    .line 789
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 791
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 796
    :goto_0
    return v1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 3

    .prologue
    .line 1015
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1017
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1022
    :goto_0
    return v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 186
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addOutgoingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 449
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->addOutgoingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialNumber"

    .prologue
    .line 287
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 563
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 570
    :goto_0
    return v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialNumber"

    .prologue
    .line 263
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 544
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 546
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 551
    :goto_0
    return v1

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkDataCallLimit()Z
    .locals 3

    .prologue
    .line 1199
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1201
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->checkDataCallLimit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1206
    :goto_0
    return v1

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkDataCallLimit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1183
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1185
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1190
    :goto_0
    return v1

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to checkEnableUseOfPacketData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 3

    .prologue
    .line 1034
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1041
    :goto_0
    return v1

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1041
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 590
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 592
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->enableLimitNumberOfCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 597
    :goto_0
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableLimitNumberOfSms(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 816
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 818
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->enableLimitNumberOfSms(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 823
    :goto_0
    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallLimitEnabled()Z
    .locals 3

    .prologue
    .line 1083
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1085
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getDataCallLimitEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1090
    :goto_0
    return v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 335
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 85
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getIncomingCallRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 381
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 383
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getIncomingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLimitOfDataCalls(I)J
    .locals 3
    .parameter "type"

    .prologue
    .line 1142
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1144
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfDataCalls(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1149
    :goto_0
    return-wide v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getLimitOfDataCalls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfIncomingCalls(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 670
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 672
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 677
    :goto_0
    return v1

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfIncomingSms(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 920
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 922
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 927
    :goto_0
    return v1

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfOutgoingCalls(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 727
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLimitOfOutgoingSms(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 977
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 979
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 984
    :goto_0
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 59
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getOutgoingCallRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 358
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->getOutgoingSmsRestriction(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .locals 3

    .prologue
    .line 613
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 615
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 620
    :goto_0
    return v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 3

    .prologue
    .line 839
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 841
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 846
    :goto_0
    return v1

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeIncomingCallRestriction()Z
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeIncomingCallRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeIncomingSmsRestriction()Z
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeIncomingSmsRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOutgoingCallRestriction()Z
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeOutgoingCallRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOutgoingSmsRestriction()Z
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->removeOutgoingSmsRestriction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 3

    .prologue
    .line 751
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 753
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetCallsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 758
    :goto_0
    return v1

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataCallLimitCounter()Z
    .locals 3

    .prologue
    .line 1163
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1165
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetDataCallLimitCounter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1170
    :goto_0
    return v1

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLimitCounter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetSmsCount()Z
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 865
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->resetSmsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 870
    :goto_0
    return v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 1062
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1064
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setDataCallLimitEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1069
    :goto_0
    return v1

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLimitEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmergencyCallOnly(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 312
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setEmergencyCallOnly(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 319
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 212
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 525
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 527
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 532
    :goto_0
    return v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .locals 8
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v0, :cond_0

    .line 1116
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfDataCalls(JJJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1122
    :goto_0
    return v0

    .line 1118
    :catch_0
    move-exception v7

    .line 1119
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to setLimitOfDataCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLimitOfIncomingCalls(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 644
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfIncomingCalls(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 652
    :goto_0
    return v1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfIncomingSms(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 894
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 896
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfIncomingSms(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 902
    :goto_0
    return v1

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 701
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 703
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfOutgoingCalls(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 709
    :goto_0
    return v1

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitOfOutgoingSms(III)Z
    .locals 3
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    .line 951
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 953
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setLimitOfOutgoingSms(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 959
    :goto_0
    return v1

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 159
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 166
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 500
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 502
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 507
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateDataLimitState()V
    .locals 3

    .prologue
    .line 1231
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1233
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDataLimitState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 3
    .parameter "totalBytes"

    .prologue
    .line 1214
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1216
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PhoneRestrictionPolicy;->mService:Landroid/app/enterprise/IPhoneRestrictionPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IPhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
