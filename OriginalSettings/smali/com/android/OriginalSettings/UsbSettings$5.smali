.class Lcom/android/OriginalSettings/UsbSettings$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 200
    iput-object p1, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 205
    .local v1, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getPlugType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/UsbSettings;->showDialog(I)V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/UsbSettings;->showDialog(I)V

    .line 210
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/OriginalSettings/UsbSettings;->access$300(Lcom/android/OriginalSettings/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "mass_storage"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 211
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/UsbSettings;->mBatteryReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/OriginalSettings/UsbSettings;->access$100(Lcom/android/OriginalSettings/UsbSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
