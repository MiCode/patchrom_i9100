.class Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2357
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lcom/android/sec_settings/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DataUsageSummary;

    .line 2358
    .local v0, target:Lcom/android/sec_settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2360
    const/4 v1, 0x0

    #calls: Lcom/android/sec_settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/DataUsageSummary;->access$000(Lcom/android/sec_settings/DataUsageSummary;Z)V

    .line 2362
    :cond_0
    return-void
.end method
