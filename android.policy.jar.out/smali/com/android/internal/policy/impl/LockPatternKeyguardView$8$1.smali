.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$8$1;
.super Ljava/lang/Thread;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->formatExtStorage()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 1974
    return-void
.end method
