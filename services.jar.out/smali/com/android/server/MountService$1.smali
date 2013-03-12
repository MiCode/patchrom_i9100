.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 588
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 591
    const-string v3, "MountService"

    const-string v4, "received ACTION_BOOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$602(Lcom/android/server/MountService;Z)Z

    .line 598
    const-string v3, "simulator"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v4, 0x0

    const-string v5, "/sdcard"

    const/4 v6, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 607
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    new-instance v3, Lcom/android/server/MountService$DirEncryptListner;

    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {v3, v4}, Lcom/android/server/MountService$DirEncryptListner;-><init>(Lcom/android/server/MountService;)V

    #setter for: Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$902(Lcom/android/server/MountService;Lcom/android/server/MountService$DirEncryptListner;)Lcom/android/server/MountService$DirEncryptListner;

    .line 608
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v2, v2, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;
    invoke-static {v3}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Lcom/android/server/MountService$DirEncryptListner;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 611
    :cond_2
    new-instance v2, Lcom/android/server/MountService$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v2}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_0

    .line 672
    :cond_3
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    const-string v3, "connected"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "mass_storage"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 675
    .local v1, available:Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v2, v1}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Z)V

    goto :goto_0

    .end local v1           #available:Z
    :cond_4
    move v1, v2

    .line 673
    goto :goto_1
.end method
