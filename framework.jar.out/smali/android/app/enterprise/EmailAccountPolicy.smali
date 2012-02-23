.class public Landroid/app/enterprise/EmailAccountPolicy;
.super Ljava/lang/Object;
.source "EmailAccountPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IEmailAccountPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "EmailAccountPolicy"

    sput-object v0, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    .line 19
    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/app/enterprise/IEmailAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 75
    :goto_0
    return-wide v0

    .line 71
    :catch_0
    move-exception v12

    .line 72
    .local v12, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with email account policy"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 22
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"
    .parameter "sendSSL"
    .parameter "sendTLS"
    .parameter "sendAllCert"
    .parameter "recvSSL"
    .parameter "recvTLS"
    .parameter "recvAllCert"
    .parameter "signature"
    .parameter "isNotify"

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    invoke-interface/range {v1 .. v20}, Landroid/app/enterprise/IEmailAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 102
    :goto_0
    return-wide v1

    .line 98
    :catch_0
    move-exception v21

    .line 99
    .local v21, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v21           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 906
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 908
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 913
    :goto_0
    return v1

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    .line 878
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 880
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 885
    :goto_0
    return-object v1

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    .line 851
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 853
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 858
    :goto_0
    return-wide v1

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAllEmailAccounts()[Landroid/app/enterprise/Account;
    .locals 3

    .prologue
    .line 950
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 952
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEmailAccountPolicy;->getAllEmailAccounts()[Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 957
    :goto_0
    return-object v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 3

    .prologue
    .line 928
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEmailAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 126
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 3
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 277
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 285
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 819
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 821
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 826
    :goto_0
    return v1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 155
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setEmailAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 162
    :goto_0
    return-wide v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 340
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingProtocol(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 347
    :goto_0
    return v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 462
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 370
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 377
    :goto_0
    return-wide v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .locals 3
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 492
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 494
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerLogin(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 499
    :goto_0
    return-wide v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 521
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 528
    :goto_0
    return v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 551
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 558
    :goto_0
    return v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 3
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 399
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPort(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 406
    :goto_0
    return v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 430
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 437
    :goto_0
    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 580
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 582
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingProtocol(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 587
    :goto_0
    return v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 702
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 704
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 710
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 610
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 612
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 617
    :goto_0
    return-wide v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .locals 3
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 733
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 735
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerLogin(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 740
    :goto_0
    return-wide v1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 762
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 769
    :goto_0
    return v1

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 792
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 794
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 799
    :goto_0
    return v1

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 3
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 639
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 641
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPort(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 646
    :goto_0
    return v1

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 670
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 672
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerSSL(ZJ)Z
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
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 216
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 3
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 245
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 252
    :goto_0
    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 3
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 310
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 312
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 3
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 187
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
