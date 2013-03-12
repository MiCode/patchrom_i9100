.class final Lcom/android/internal/telephony/ims/IMSServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "IMSServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IMSServiceStateTracker"


# instance fields
.field private IMSDataConnectionState:I

.field private mDefaultRoamingIndicator:I

.field private mIMSRoaming:Z

.field private mIsInPrl:Z

.field private mRegistrationState:I

.field private mRoamingIndicator:I

.field private networkType:I

.field private newIMSDataConnectionState:I

.field private newNetworkType:I

.field phone:Lcom/android/internal/telephony/ims/IMSPhone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->networkType:I

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newNetworkType:I

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mIMSRoaming:Z

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->IMSDataConnectionState:I

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newIMSDataConnectionState:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mRegistrationState:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;)V
    .locals 2
    .parameter "sImsPhone"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->networkType:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newNetworkType:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mIMSRoaming:Z

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->IMSDataConnectionState:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newIMSDataConnectionState:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mRegistrationState:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 79
    iget-object v0, p1, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 80
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 81
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIMSDataConnectionState()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLacAndCid(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 171
    return-void
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 93
    return-void
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 0
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 117
    return-void
.end method

.method protected hangupAndPowerOff()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected hangupBeforeDeactivePDP()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->hangupIfAlive()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->hangupIfAlive()V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->hangupIfAlive()V

    .line 106
    :cond_0
    return-void
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 191
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 188
    return-void
.end method

.method public registerForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "eventRegisteredToNetwork"
    .parameter "object"

    .prologue
    .line 141
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public unregisterForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 146
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
