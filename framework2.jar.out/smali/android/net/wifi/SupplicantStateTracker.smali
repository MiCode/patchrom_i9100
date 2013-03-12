.class Landroid/net/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantStateTracker$1;,
        Landroid/net/wifi/SupplicantStateTracker$DormantState;,
        Landroid/net/wifi/SupplicantStateTracker$CompletedState;,
        Landroid/net/wifi/SupplicantStateTracker$HandshakeState;,
        Landroid/net/wifi/SupplicantStateTracker$ScanState;,
        Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;,
        Landroid/net/wifi/SupplicantStateTracker$InactiveState;,
        Landroid/net/wifi/SupplicantStateTracker$UninitializedState;,
        Landroid/net/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAssocRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mCompletedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisconnectState:Lcom/android/internal/util/State;

.field private mDormantState:Lcom/android/internal/util/State;

.field private mHandshakeState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private mScanState:Lcom/android/internal/util/State;

.field private mUninitializedState:Lcom/android/internal/util/State;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/SupplicantStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 3
    .parameter "c"
    .parameter "wsm"
    .parameter "wcs"
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 49
    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 50
    iput v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    .line 54
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 60
    iput-boolean v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 64
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 65
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 66
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$InactiveState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 67
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 68
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$ScanState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 69
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 70
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$CompletedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 71
    new-instance v0, Landroid/net/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Landroid/net/wifi/SupplicantStateTracker$DormantState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 76
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 78
    iput-object p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 79
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 80
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 81
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 82
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 83
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 84
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 85
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 88
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 91
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->start()V

    .line 92
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Landroid/net/wifi/SupplicantStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$108(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/SupplicantStateTracker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/SupplicantStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    return v0
.end method

.method static synthetic access$602(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    return p1
.end method

.method static synthetic access$608(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$902(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method private handleNetworkConnectionFailure(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 102
    return-void
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 1
    .parameter "netId"
    .parameter "reason"

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 112
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 3
    .parameter "state"
    .parameter "failedAuth"

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    const-string v1, "newState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    if-eqz p2, :cond_0

    .line 167
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getPromptCredentialsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "supplicantError"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    .locals 4
    .parameter "stateChangeResult"

    .prologue
    .line 115
    iget-object v0, p1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 117
    .local v0, supState:Landroid/net/wifi/SupplicantState;
    sget-boolean v1, Landroid/net/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    sget-object v1, Landroid/net/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 154
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 144
    :pswitch_5
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
