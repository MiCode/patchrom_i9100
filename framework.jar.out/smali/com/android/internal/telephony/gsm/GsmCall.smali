.class Lcom/android/internal/telephony/gsm/GsmCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCall$1;
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

.field private mIsVideoCall:Z

.field owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 59
    return-void
.end method

.method static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .parameter "dcState"

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCall$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
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

    .line 44
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 49
    :goto_0
    return-object v0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 47
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 48
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 49
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 43
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
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 113
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mIsVideoCall:Z

    .line 116
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->callType:Lcom/android/internal/telephony/Call$CallType;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 118
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "conn"
    .parameter "state"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 125
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 224
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mIsVideoCall:Z

    .line 221
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 233
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 234
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 236
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 5
    .parameter "conn"

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 135
    const/4 v0, 0x1

    .line 137
    .local v0, hasOnlyDisconnectedConnections:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 141
    const/4 v0, 0x0

    .line 146
    :cond_0
    if-eqz v0, :cond_1

    .line 147
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 150
    .end local v0           #hasOnlyDisconnectedConnections:Z
    .end local v1           #i:I
    .end local v2           #s:I
    :cond_1
    return-void

    .line 137
    .restart local v0       #hasOnlyDisconnectedConnections:Z
    .restart local v1       #i:I
    .restart local v2       #s:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 160
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 62
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
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fallbackHangupVTCall(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 95
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
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

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
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 89
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

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
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mIsVideoCall:Z

    return v0
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 207
    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 211
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 214
    return-void
.end method

.method public setVideoCall(Z)V
    .locals 0
    .parameter "mIsVideoCall"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mIsVideoCall:Z

    .line 242
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "conn"
    .parameter "dc"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 169
    .local v0, changed:Z
    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 171
    .local v2, newState:Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 172
    iput-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 173
    const/4 v0, 0x1

    .line 177
    :cond_0
    iget-object v1, p2, Lcom/android/internal/telephony/DriverCall;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 178
    .local v1, newCallType:Lcom/android/internal/telephony/Call$CallType;
    iget-object v3, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    if-eq v1, v3, :cond_1

    .line 179
    iput-object v1, p0, Lcom/android/internal/telephony/Call;->callType:Lcom/android/internal/telephony/Call$CallType;

    .line 180
    const/4 v0, 0x1

    .line 184
    :cond_1
    return v0
.end method
