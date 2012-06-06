.class Lcom/android/OriginalSettings/UsbSettings$6;
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
    .line 242
    iput-object p1, p0, Lcom/android/OriginalSettings/UsbSettings$6;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings$6;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #calls: Lcom/android/OriginalSettings/UsbSettings;->setDefaultMode()V
    invoke-static {v0}, Lcom/android/OriginalSettings/UsbSettings;->access$500(Lcom/android/OriginalSettings/UsbSettings;)V

    .line 245
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings$6;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    return-void
.end method
