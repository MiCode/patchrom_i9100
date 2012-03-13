.class Lcom/sec/android/app/callsetting/videocall/VideoCall$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/videocall/VideoCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/VideoCall;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/videocall/VideoCall;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    const-string v0, "VideoCallSettings"

    const-string v1, "Video Call Ended "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCall;

    #getter for: Lcom/sec/android/app/callsetting/videocall/VideoCall;->mSenderIsVideoCall:Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->access$000(Lcom/sec/android/app/callsetting/videocall/VideoCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "VideoCallSettings"

    const-string v1, "Sender is Video Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "VideoCallSettings"

    const-string v1, "Video Call Ended and Settings also need to destroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCall$1;->this$0:Lcom/sec/android/app/callsetting/videocall/VideoCall;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCall;->finish()V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "VideoCallSettings"

    const-string v1, "Sender is not Video Call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
