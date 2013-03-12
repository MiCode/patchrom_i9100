.class Lcom/android/internal/policy/impl/GlobalActions$5;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 393
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "persist.sys.shutdown"

    const-string v1, "GARB"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$900(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot()V

    .line 404
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method
