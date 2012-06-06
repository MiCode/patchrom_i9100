.class Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/OriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 228
    return-void
.end method
