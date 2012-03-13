.class Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;
.super Landroid/os/Handler;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/voicecall/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mNetworkServiceHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1142
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1143
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    const-string v1, "mNetworkServiceHandler: network available for queries."

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1900(Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$2100(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #getter for: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$2000(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 1156
    :sswitch_1
    const-string v0, "mNetworkServiceHandler: cancel query requested."

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$1900(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/CallBarring$11;->this$0:Lcom/sec/android/app/callsetting/voicecall/CallBarring;

    #calls: Lcom/sec/android/app/callsetting/voicecall/CallBarring;->dismissCallWaiting()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/CallBarring;->access$2200(Lcom/sec/android/app/callsetting/voicecall/CallBarring;)V

    goto :goto_0

    .line 1140
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
