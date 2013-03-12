.class public Landroid/ktuca/KtUcaManager;
.super Ljava/lang/Object;
.source "KtUcaManager.java"


# instance fields
.field private mService:Landroid/ktuca/IKtUcaIF;


# direct methods
.method public constructor <init>(Landroid/ktuca/IKtUcaIF;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    .line 10
    return-void
.end method


# virtual methods
.method public KUCA_CHInit(B[B[I)J
    .locals 2
    .parameter "ucatag"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2, p3}, Landroid/ktuca/IKtUcaIF;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_Close([BB)J
    .locals 2
    .parameter "handle"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2}, Landroid/ktuca/IKtUcaIF;->KUCA_Close([BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_CloseT([BB)J
    .locals 2
    .parameter "appId"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2}, Landroid/ktuca/IKtUcaIF;->KUCA_CloseT([BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_KUH_Establish(B)J
    .locals 2
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1}, Landroid/ktuca/IKtUcaIF;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_KUH_Release(B)J
    .locals 2
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1}, Landroid/ktuca/IKtUcaIF;->KUCA_KUH_Release(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 6
    .parameter "ucatag"
    .parameter "pbSendBuffer"
    .parameter "cbSendLength"
    .parameter "pbRecvBuffer"
    .parameter "pcbRecvLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_Open([B[B[I)J
    .locals 2
    .parameter "handle"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2, p3}, Landroid/ktuca/IKtUcaIF;->KUCA_Open([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_OpenT([B[B[I)J
    .locals 2
    .parameter "appId"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2, p3}, Landroid/ktuca/IKtUcaIF;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_Transmit([B[BI[B[I)J
    .locals 6
    .parameter "handle"
    .parameter "input"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_UCAVersion([B[B[I)J
    .locals 2
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2, p3}, Landroid/ktuca/IKtUcaIF;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getHandle([B[B[B[B[I)J
    .locals 6
    .parameter "callerId"
    .parameter "preKey"
    .parameter "appId"
    .parameter "handle"
    .parameter "handleLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getICCID([B[B[II[B)J
    .locals 6
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getIMSI([B[B[II[B)J
    .locals 6
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getMDN([B[B[II[B)J
    .locals 6
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getMODEL([B[B[II[B)J
    .locals 6
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getMSISDN([B[B[II[B)J
    .locals 6
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getPUID([B[B[II[B)J
    .locals 6
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .parameter "encryptType"
    .parameter "deviceIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getPinStatus([BI[B[I)J
    .locals 2
    .parameter "handle"
    .parameter "pinId"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/ktuca/IKtUcaIF;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getSIMInfo([B[B[I)J
    .locals 2
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2, p3}, Landroid/ktuca/IKtUcaIF;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_getSimStatus([B[B)J
    .locals 2
    .parameter "handle"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1, p2}, Landroid/ktuca/IKtUcaIF;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_printCHInfo(B)J
    .locals 2
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0, p1}, Landroid/ktuca/IKtUcaIF;->KUCA_printCHInfo(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_usimAUTH([B[B[B[B[I)J
    .locals 6
    .parameter "handle"
    .parameter "rand"
    .parameter "autn"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 6
    .parameter "handle"
    .parameter "pinId"
    .parameter "pinCode"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0}, Landroid/ktuca/IKtUcaIF;->getResource()I

    move-result v0

    return v0
.end method

.method public releaseResource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Landroid/ktuca/KtUcaManager;->mService:Landroid/ktuca/IKtUcaIF;

    invoke-interface {v0}, Landroid/ktuca/IKtUcaIF;->releaseResource()I

    move-result v0

    return v0
.end method
