.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 631
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 632
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 638
    return-void
.end method
