.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;
.super Landroid/view/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListenerForPenGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 1001
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 1002
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 1006
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProposedRotationChanged for pen gesture, rotation changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListenerForPenGesture;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateWacomOffset(I)V

    .line 1011
    return-void
.end method
