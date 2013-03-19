.class Lcom/android/settings/UsbSettings$7;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/UsbSettings$7;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/settings/UsbSettings$7;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v0, p0, Lcom/android/settings/UsbSettings$7;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mUSBConnected:Z
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/UsbSettings$7;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UsbSettings$7;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/UsbSettings$7;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$400(Lcom/android/settings/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method
