.class Lcom/android/settings/UsbSettings$8;
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
    .line 264
    iput-object p1, p0, Lcom/android/settings/UsbSettings$8;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/UsbSettings$8;->this$0:Lcom/android/settings/UsbSettings;

    #calls: Lcom/android/settings/UsbSettings;->setDefaultMode()V
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$700(Lcom/android/settings/UsbSettings;)V

    .line 267
    return-void
.end method
