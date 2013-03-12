.class final Lcom/android/internal/telephony/ims/IMSCall;
.super Lcom/android/internal/telephony/Call;
.source "IMSCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IMSCall$1;
    }
.end annotation


# instance fields
.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

.field state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V
    .locals 1
    .parameter "IMSCallTracker"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSCall;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 64
    return-void
.end method

.method static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .parameter "dcState"

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/telephony/ims/IMSCall$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 52
    :goto_0
    return-object v0

    .line 48
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 49
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 52
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 46
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


# virtual methods
.method public attach(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 115
    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "conn"
    .parameter "state"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 122
    return-void
.end method

.method public clearDisconnected()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 154
    .local v0, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 159
    .end local v0           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 160
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 163
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 5
    .parameter "conn"

    .prologue
    .line 178
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 181
    const/4 v0, 0x1

    .line 183
    .local v0, hasOnlyDisconnectedConnections:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 187
    const/4 v0, 0x0

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    .line 193
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 196
    .end local v0           #hasOnlyDisconnectedConnections:Z
    .end local v1           #i:I
    .end local v2           #s:I
    :cond_1
    return-void

    .line 183
    .restart local v0       #hasOnlyDisconnectedConnections:Z
    .restart local v1       #i:I
    .restart local v2       #s:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public detach(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 131
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public fallbackHangupVTCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->fallbackHangupVTCall(Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 209
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCall;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 99
    return-void
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 2

    .prologue
    .line 201
    const-string v0, "IMS"

    const-string v1, "IMS Phone VideoCall : TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onHangupLocal()V
    .locals 4

    .prologue
    .line 168
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 171
    .local v0, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onHangupLocal()V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 175
    return-void
.end method

.method public update(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .parameter "IMSConnection"
    .parameter "dc"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, changed:Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/ims/IMSCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 140
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 141
    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 142
    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0
.end method
