.class Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/DataUsageSummary;

    .line 1965
    .local v0, target:Lcom/android/sec_settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 1966
    iget-wide v1, p0, Lcom/android/sec_settings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/sec_settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/DataUsageSummary;->access$1100(Lcom/android/sec_settings/DataUsageSummary;J)V

    .line 1968
    :cond_0
    return-void
.end method
