.class Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;Z)V

    .line 211
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #getter for: Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$800(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    move-result-object v1

    #calls: Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$900(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x60018
        :pswitch_0
    .end packed-switch
.end method
