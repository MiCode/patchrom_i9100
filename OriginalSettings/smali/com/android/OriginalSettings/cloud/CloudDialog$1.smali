.class Lcom/android/settings/cloud/CloudDialog$1;
.super Landroid/os/CountDownTimer;
.source "CloudDialog.java"


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
.method constructor <init>(Lcom/android/settings/cloud/CloudDialog;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    #calls: Lcom/android/settings/cloud/CloudDialog;->dismissProgressDialog()Z
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$000(Lcom/android/settings/cloud/CloudDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "CloudSettings"

    const-string v1, "Request Timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    #getter for: Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$100(Lcom/android/settings/cloud/CloudDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$1;->this$0:Lcom/android/settings/cloud/CloudDialog;

    #getter for: Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$100(Lcom/android/settings/cloud/CloudDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "CloudSettings"

    const-string v1, "Still waiting for the response from cloud agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method
