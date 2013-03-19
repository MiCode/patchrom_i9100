.class Lcom/android/settings/UsbSettings$4;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsbSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 141
    iput-object p1, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mUSBConnected:Z
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/UsbSettings;->showDialog(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/UsbSettings$4;->this$0:Lcom/android/settings/UsbSettings;

    #getter for: Lcom/android/settings/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$400(Lcom/android/settings/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method
