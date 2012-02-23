.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$402(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10400d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    goto :goto_0
.end method
