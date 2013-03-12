.class Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;
.super Ljava/lang/Object;
.source "RecoveryUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->verifyPasswordAndUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$200(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    .line 155
    return-void
.end method
