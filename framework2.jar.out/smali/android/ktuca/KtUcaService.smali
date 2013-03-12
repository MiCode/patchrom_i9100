.class public Landroid/ktuca/KtUcaService;
.super Landroid/ktuca/IKtUcaIF$Stub;
.source "KtUcaService.java"


# instance fields
.field private KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

.field private final TAG:Ljava/lang/String;

.field private mChannel:[B

.field private mChannelLen:[I

.field private mContext:Landroid/content/Context;

.field private referenceCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/ktuca/IKtUcaIF$Stub;-><init>()V

    .line 8
    const-string v2, "KT_UCA_SERVICE"

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->TAG:Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    iput v2, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 11
    const/16 v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    .line 12
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    .line 13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    .line 17
    const-wide/16 v0, -0x1

    .line 18
    .local v0, ret:J
    iput-object p1, p0, Landroid/ktuca/KtUcaService;->mContext:Landroid/content/Context;

    .line 19
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KtUcaService]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/ktuca/KtUcaService$1;

    invoke-direct {v3, p0}, Landroid/ktuca/KtUcaService$1;-><init>(Landroid/ktuca/KtUcaService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 30
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KtUcaService]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method static synthetic access$000(Landroid/ktuca/KtUcaService;)Landroid/ktuca/KtUcaServiceJni;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    return-object v0
.end method

.method static synthetic access$002(Landroid/ktuca/KtUcaService;Landroid/ktuca/KtUcaServiceJni;)Landroid/ktuca/KtUcaServiceJni;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    iput-object p1, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    return-object p1
.end method

.method static synthetic access$100(Landroid/ktuca/KtUcaService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    return-object v0
.end method

.method static synthetic access$200(Landroid/ktuca/KtUcaService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    return-object v0
.end method


# virtual methods
.method public KUCA_CHInit(B[B[I)J
    .locals 5
    .parameter "ucatag"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    const-wide/16 v0, -0x1

    .line 173
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CHInit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    .line 175
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_CHInit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-wide v0
.end method

.method public KUCA_Close([BB)J
    .locals 5
    .parameter "handle"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    const-wide/16 v0, -0x1

    .line 149
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Close]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    .line 151
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Close] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-wide v0
.end method

.method public KUCA_CloseT([BB)J
    .locals 4
    .parameter "appId"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    const-wide/16 v0, -0x1

    .line 221
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    .line 223
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-wide v0
.end method

.method public KUCA_KUH_Establish(B)J
    .locals 5
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    const-wide/16 v0, -0x1

    .line 189
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Establish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    .line 191
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_KUH_Establish] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-wide v0
.end method

.method public KUCA_KUH_Release(B)J
    .locals 4
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    const-wide/16 v0, -0x1

    .line 197
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    .line 199
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-wide v0
.end method

.method public KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 4
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
    .line 203
    const-wide/16 v0, -0x1

    .line 205
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    .line 207
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-wide v0
.end method

.method public KUCA_Open([B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    const-wide/16 v0, -0x1

    .line 132
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Open]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    .line 134
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Open] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-wide v0
.end method

.method public KUCA_OpenT([B[B[I)J
    .locals 4
    .parameter "appId"
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    const-wide/16 v0, -0x1

    .line 213
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    .line 215
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "-[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-wide v0
.end method

.method public KUCA_Transmit([B[BI[B[I)J
    .locals 5
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
    .line 139
    const-wide/16 v0, -0x1

    .line 141
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    .line 143
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Transmit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-wide v0
.end method

.method public KUCA_UCAVersion([B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const-wide/16 v0, -0x1

    .line 165
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_UCAVersion]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    .line 167
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_UCAVersion] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-wide v0
.end method

.method public KUCA_getHandle([B[B[B[B[I)J
    .locals 8
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
    .line 35
    const-wide/16 v6, -0x1

    .line 37
    .local v6, ret:J
    const-string v0, "KT_UCA_SERVICE"

    const-string v1, "+[KUCA_getHandle]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/KtUcaServiceJni;->uca_getHandle([B[B[B[B[I)J

    move-result-wide v6

    .line 39
    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-[KUCA_getHandle] ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-wide v6
.end method

.method public KUCA_getICCID([B[B[II[B)J
    .locals 5
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
    .line 63
    const-wide/16 v0, -0x1

    .line 65
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getICCID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    .line 67
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getICCID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-wide v0
.end method

.method public KUCA_getIMSI([B[B[II[B)J
    .locals 5
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
    .line 54
    const-wide/16 v0, -0x1

    .line 56
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getIMSI]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    .line 58
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getIMSI] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-wide v0
.end method

.method public KUCA_getMDN([B[B[II[B)J
    .locals 5
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
    .line 81
    const-wide/16 v0, -0x1

    .line 83
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMDN]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    .line 85
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMDN] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-wide v0
.end method

.method public KUCA_getMODEL([B[B[II[B)J
    .locals 5
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
    .line 90
    const-wide/16 v0, -0x1

    .line 92
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMODEL]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    .line 94
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMODEL] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-wide v0
.end method

.method public KUCA_getMSISDN([B[B[II[B)J
    .locals 8
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
    .line 45
    const-wide/16 v6, -0x1

    .line 47
    .local v6, ret:J
    const-string v0, "KT_UCA_SERVICE"

    const-string v1, "+[KUCA_getMSISDN]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/KtUcaServiceJni;->uca_getMSISDN([B[B[II[B)J

    move-result-wide v6

    .line 49
    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-[KUCA_getMSISDN] ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-wide v6
.end method

.method public KUCA_getPUID([B[B[II[B)J
    .locals 5
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
    .line 72
    const-wide/16 v0, -0x1

    .line 74
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPUID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    .line 76
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPUID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-wide v0
.end method

.method public KUCA_getPinStatus([BI[B[I)J
    .locals 5
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
    .line 114
    const-wide/16 v0, -0x1

    .line 116
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPinStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    .line 118
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPinStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-wide v0
.end method

.method public KUCA_getSIMInfo([B[B[I)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    const-wide/16 v0, -0x1

    .line 100
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSIMInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    .line 102
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSIMInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-wide v0
.end method

.method public KUCA_getSimStatus([B[B)J
    .locals 5
    .parameter "handle"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const-wide/16 v0, -0x1

    .line 157
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSimStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    .line 159
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSimStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-wide v0
.end method

.method public KUCA_printCHInfo(B)J
    .locals 5
    .parameter "ucatag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    const-wide/16 v0, -0x1

    .line 181
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_printCHInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    .line 183
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_printCHInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-wide v0
.end method

.method public KUCA_usimAUTH([B[B[B[B[I)J
    .locals 5
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
    .line 106
    const-wide/16 v0, -0x1

    .line 108
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_usimAUTH]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    .line 110
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_usimAUTH] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-wide v0
.end method

.method public KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 5
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
    .line 122
    const-wide/16 v0, -0x1

    .line 124
    .local v0, ret:J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_verifyPin]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    .line 126
    const-string v2, "KT_UCA_SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_verifyPin] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-wide v0
.end method

.method public getResource()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "2.0.0_R06_110317"

    .line 231
    .local v0, KTUCA_VER:Ljava/lang/String;
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 232
    const-string v1, "KT_UCA_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+[KtUcaService Ver]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "KT_UCA_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref. Cnt. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v1
.end method

.method public releaseResource()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 240
    const-string v0, "KT_UCA_SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ref. Cnt. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v0
.end method
