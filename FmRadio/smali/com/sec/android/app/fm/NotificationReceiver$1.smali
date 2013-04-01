.class Lcom/sec/android/app/fm/NotificationReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, cmdStr:Ljava/lang/String;
    const-string v3, "from"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, appName:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification Rec Got Music command :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    const-string v3, "com.sec.android.app.fm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 122
    .local v2, msg:Landroid/os/Message;
    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 123
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$1;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
