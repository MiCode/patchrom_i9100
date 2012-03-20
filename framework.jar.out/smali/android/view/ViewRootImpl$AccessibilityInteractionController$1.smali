.class Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V
    .locals 0
    .parameter

    .prologue
    .line 4889
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;->this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;->newInstance()Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    .locals 2

    .prologue
    .line 4891
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    iget-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;->this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;-><init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4889
    check-cast p1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;->onAcquired(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public onAcquired(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 4896
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4889
    check-cast p1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$1;->onReleased(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public onReleased(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 4899
    #calls: Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->clear()V
    invoke-static {p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->access$1000(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V

    .line 4900
    return-void
.end method
