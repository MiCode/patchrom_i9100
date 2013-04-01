.class Lcom/sec/android/app/fm/NotificationReceiver$2;
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
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$2;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->RefreshNotification()V
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$200(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 149
    :cond_1
    return-void
.end method
