.class Lcom/android/server/NotificationManagerService$PickupPlayer$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService$PickupPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 1835
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1849
    :goto_0
    return-void

    .line 1837
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$PickupPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1838
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "Pickup - MREvent.REACTIVE_ALERT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1840
    .local v0, mPickUpHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/NotificationManagerService$PickupPlayer$1$1;-><init>(Lcom/android/server/NotificationManagerService$PickupPlayer$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1835
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
