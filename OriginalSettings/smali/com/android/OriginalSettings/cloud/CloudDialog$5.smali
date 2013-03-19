.class Lcom/android/settings/cloud/CloudDialog$5;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog$5;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$5;->this$0:Lcom/android/settings/cloud/CloudDialog;

    #getter for: Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$5;->this$0:Lcom/android/settings/cloud/CloudDialog;

    #getter for: Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/cloud/CloudDialog$DialogListener;->onPositiveButtonClick()V

    .line 173
    :cond_0
    return-void
.end method
