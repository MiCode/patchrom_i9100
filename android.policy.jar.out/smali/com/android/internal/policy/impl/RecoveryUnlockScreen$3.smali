.class Lcom/android/internal/policy/impl/RecoveryUnlockScreen$3;
.super Ljava/lang/Object;
.source "RecoveryUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/RecoveryUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecoveryUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecoveryUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/RecoveryUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/RecoveryUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/RecoveryUnlockScreen;->verifyPasswordAndUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/RecoveryUnlockScreen;->access$200(Lcom/android/internal/policy/impl/RecoveryUnlockScreen;)V

    .line 154
    return-void
.end method
