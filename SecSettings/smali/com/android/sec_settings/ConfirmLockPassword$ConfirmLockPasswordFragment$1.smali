.class Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/sec_settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09057c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    return-void
.end method
