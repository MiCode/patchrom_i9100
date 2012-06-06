.class Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$2;->this$0:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 292
    return-void
.end method
