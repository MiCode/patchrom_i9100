.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field public mSource:Landroid/view/View;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 5637
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5637
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5641
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5642
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5643
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 5644
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 5646
    :cond_0
    return-void
.end method
