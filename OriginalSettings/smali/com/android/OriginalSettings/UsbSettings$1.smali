.class Lcom/android/OriginalSettings/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/OriginalSettings/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x2

    .line 69
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getPlugType()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/UsbSettings;->mDisplayState:Z
    invoke-static {v1}, Lcom/android/OriginalSettings/UsbSettings;->access$000(Lcom/android/OriginalSettings/UsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/UsbSettings;->removeDialog(I)V

    .line 73
    iget-object v1, p0, Lcom/android/OriginalSettings/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$1;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/OriginalSettings/UsbSettings;->access$100(Lcom/android/OriginalSettings/UsbSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    :cond_0
    return-void
.end method
