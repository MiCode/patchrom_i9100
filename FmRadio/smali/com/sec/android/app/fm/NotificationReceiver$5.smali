.class Lcom/sec/android/app/fm/NotificationReceiver$5;
.super Ljava/lang/Object;
.source "NotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    iput-object p2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z
    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$900(Lcom/sec/android/app/fm/NotificationReceiver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$902(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z

    .line 602
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->val$context:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 604
    .local v1, pm:Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/fm/NotificationReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    iget-object v2, v2, Lcom/sec/android/app/fm/NotificationReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$1000(Lcom/sec/android/app/fm/NotificationReceiver;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->seekDown()J

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$5;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$902(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z

    .line 619
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 612
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "busy.."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 615
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 616
    :catch_1
    move-exception v2

    goto :goto_0
.end method
