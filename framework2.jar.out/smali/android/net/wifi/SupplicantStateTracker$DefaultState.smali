.class Landroid/net/wifi/SupplicantStateTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field private mIsCanadaModel:Z

.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 188
    const-string v0, "CA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->mIsCanadaModel:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Landroid/net/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 196
    invoke-static {}, Landroid/net/wifi/SupplicantStateTracker;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SupplicantStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 239
    :cond_1
    :goto_0
    const-string v5, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_1
    return v4

    .line 199
    :sswitch_0
    iget-boolean v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->mIsCanadaModel:Z

    if-eqz v6, :cond_3

    .line 200
    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v5}, Landroid/net/wifi/SupplicantStateTracker;->access$108(Landroid/net/wifi/SupplicantStateTracker;)I

    .line 214
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v5, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$302(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    goto :goto_1

    .line 202
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v6}, Landroid/net/wifi/SupplicantStateTracker;->access$108(Landroid/net/wifi/SupplicantStateTracker;)I

    .line 204
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 205
    .local v1, networkId:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v4, :cond_5

    move v0, v4

    .line 206
    .local v0, isEap:Z
    :goto_3
    const-string v7, "SupplicantStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTHENTICATION_FAILURE_EVENT] networkId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [EAP fail count : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v9}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz v0, :cond_4

    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v6}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 209
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #calls: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V
    invoke-static {v6, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;I)V

    .line 210
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v6, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$102(Landroid/net/wifi/SupplicantStateTracker;I)I

    goto :goto_2

    .end local v0           #isEap:Z
    :cond_5
    move v0, v5

    .line 205
    goto :goto_3

    .line 206
    .restart local v0       #isEap:Z
    :cond_6
    const-string v6, ""

    goto :goto_4

    .line 217
    .end local v0           #isEap:Z
    .end local v1           #networkId:I
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/StateChangeResult;

    .line 218
    .local v3, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v2, v3, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 219
    .local v2, state:Landroid/net/wifi/SupplicantState;
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v7, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v7}, Landroid/net/wifi/SupplicantStateTracker;->access$300(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v7

    #calls: Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v6, v2, v7}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 220
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v6, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$302(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 221
    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #calls: Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    invoke-static {v5, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$500(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V

    goto/16 :goto_1

    .line 224
    .end local v2           #state:Landroid/net/wifi/SupplicantState;
    .end local v3           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_2
    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v5}, Landroid/net/wifi/SupplicantStateTracker;->access$608(Landroid/net/wifi/SupplicantStateTracker;)I

    goto/16 :goto_1

    .line 227
    :sswitch_3
    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/SupplicantStateTracker;->access$700(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$800(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 230
    :sswitch_4
    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v5, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$902(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    goto/16 :goto_1

    .line 234
    :sswitch_5
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v6}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/SupplicantStateTracker;->access$1000(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 236
    iget-object v6, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v6, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$902(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    goto/16 :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_5
        0x2006f -> :sswitch_3
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x2400e -> :sswitch_2
        0x25001 -> :sswitch_4
        0x25004 -> :sswitch_5
    .end sparse-switch
.end method
