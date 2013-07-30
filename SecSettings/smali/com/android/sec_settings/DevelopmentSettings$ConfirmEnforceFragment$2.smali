.class Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment$2;->this$0:Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment$2;->this$0:Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-virtual {v0}, Lcom/android/sec_settings/DevelopmentSettings$ConfirmEnforceFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DevelopmentSettings;

    #calls: Lcom/android/sec_settings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/sec_settings/DevelopmentSettings;->access$100(Lcom/android/sec_settings/DevelopmentSettings;)V

    .line 1054
    return-void
.end method
