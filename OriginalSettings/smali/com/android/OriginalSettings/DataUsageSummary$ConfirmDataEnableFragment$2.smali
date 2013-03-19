.class Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2302
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment$2;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2303
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2304
    const/4 v1, 0x0

    #calls: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;Z)V

    .line 2306
    :cond_0
    return-void
.end method
