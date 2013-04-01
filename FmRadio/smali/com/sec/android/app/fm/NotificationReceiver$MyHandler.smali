.class Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;
.super Landroid/os/Handler;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 897
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 min is over lets remove notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$600(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$602(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$600(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 907
    :cond_1
    return-void
.end method
