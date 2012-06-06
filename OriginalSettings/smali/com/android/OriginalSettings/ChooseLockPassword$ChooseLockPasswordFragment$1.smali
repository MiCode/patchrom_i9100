.class Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;

.field final synthetic val$next:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;

    iput-object p2, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;->val$next:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$1;->val$next:Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/OriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 646
    return-void
.end method
