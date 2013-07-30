.class Lcom/android/sec_settings/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary;->access$1200(Lcom/android/sec_settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    const-wide/16 v1, -0x1

    #calls: Lcom/android/sec_settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/sec_settings/DataUsageSummary;->access$1300(Lcom/android/sec_settings/DataUsageSummary;J)V

    .line 1310
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mAlertAtWarning:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary;->access$1200(Lcom/android/sec_settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/sec_settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "confirmWarning"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary;->access$700(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    #getter for: Lcom/android/sec_settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/sec_settings/DataUsageSummary;->access$700(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/sec_settings/DataUsageSummary$9;->this$0:Lcom/android/sec_settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/sec_settings/DataUsageSummary$ConfirmWarningFragment;->show(Lcom/android/sec_settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    #setter for: Lcom/android/sec_settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/sec_settings/DataUsageSummary;->access$702(Lcom/android/sec_settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_0
.end method
