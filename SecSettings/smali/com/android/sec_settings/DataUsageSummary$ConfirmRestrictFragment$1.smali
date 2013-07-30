.class Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment$1;->this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2433
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment$1;->this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-virtual {v1}, Lcom/android/sec_settings/DataUsageSummary$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DataUsageSummary;

    .line 2434
    .local v0, target:Lcom/android/sec_settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2435
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 2437
    :cond_0
    return-void
.end method
