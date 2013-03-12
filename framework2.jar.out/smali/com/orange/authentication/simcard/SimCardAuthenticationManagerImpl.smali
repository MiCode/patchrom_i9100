.class public Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;
.super Ljava/lang/Object;
.source "SimCardAuthenticationManagerImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;
    }
.end annotation


# static fields
.field private static final PERM_DENIED_EX_MSG:Ljava/lang/String; = "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

.field private static final SERV_NOT_AVAIL_MSG:Ljava/lang/String; = "Service not available"


# instance fields
.field private mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "binder"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    move-result-object v0

    iput-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    .line 33
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 4
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;,
            Lcom/orange/authentication/simcard/ServiceFailureException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-nez v2, :cond_0

    .line 51
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "Service not available"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    invoke-interface {v2, p1, p2}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;->akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$ServiceAkaAuthenticationResult$Error:[I

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 87
    :cond_1
    if-nez v1, :cond_2

    .line 88
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "akaAuthentication result is null"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :pswitch_2
    new-instance v2, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v2

    .line 71
    :pswitch_3
    new-instance v2, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;-><init>()V

    throw v2

    .line 74
    :pswitch_4
    new-instance v2, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v2

    .line 77
    :pswitch_5
    new-instance v2, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getAuts()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v2

    .line 80
    :pswitch_6
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :pswitch_7
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_2
    return-object v1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 4

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-nez v2, :cond_0

    .line 101
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 122
    :goto_0
    return-object v2

    .line 104
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    invoke-interface {v2}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;->getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$ServiceSimCardType$Error:[I

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 119
    :cond_1
    if-nez v1, :cond_2

    .line 120
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 112
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :pswitch_1
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v2

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 4
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/ServiceFailureException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "Service not available"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    invoke-interface {v2, p1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService;->gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 146
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$ServiceGsmAuthenticationResult$Error:[I

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getError()Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 167
    :cond_1
    if-nez v1, :cond_2

    .line 168
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v3, "gsmAuthentication result is null"

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :pswitch_2
    new-instance v2, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v2

    .line 157
    :pswitch_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires com.orange.permission.SIMCARD_AUTHENTICATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :pswitch_4
    new-instance v2, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-virtual {v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :pswitch_5
    new-instance v2, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v2}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v2

    .line 170
    :cond_2
    return-object v1

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isServiceReady()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mSimService:Lcom/orange/authentication/simcard/ISimCardAuthenticationService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
