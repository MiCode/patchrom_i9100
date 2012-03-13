.class Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;
.super Landroid/os/Handler;
.source "VideoCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

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

    .line 1078
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1080
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 1081
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    const-string v1, "mNetworkServiceHandler: network available for queries."

    #calls: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1900(Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$2100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$2000(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 1094
    :sswitch_1
    const-string v0, "mNetworkServiceHandler: cancel query requested."

    #calls: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$1900(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    #calls: Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->dismissCallWaiting()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->access$2200(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    goto :goto_0

    .line 1078
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
