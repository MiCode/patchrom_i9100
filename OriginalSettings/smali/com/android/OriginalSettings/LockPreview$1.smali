.class Lcom/android/OriginalSettings/LockPreview$1;
.super Ljava/lang/Object;
.source "LockPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/LockPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/LockPreview;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/LockPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/OriginalSettings/LockPreview$1;->this$0:Lcom/android/OriginalSettings/LockPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "LockPreview"

    const-string v1, "mStartLockAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/LockPreview$1;->this$0:Lcom/android/OriginalSettings/LockPreview;

    #getter for: Lcom/android/OriginalSettings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/OriginalSettings/LockPreview;->access$000(Lcom/android/OriginalSettings/LockPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/LockPreview$1;->this$0:Lcom/android/OriginalSettings/LockPreview;

    #getter for: Lcom/android/OriginalSettings/LockPreview;->mClockLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/OriginalSettings/LockPreview;->access$000(Lcom/android/OriginalSettings/LockPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/LockPreview$1;->this$0:Lcom/android/OriginalSettings/LockPreview;

    #getter for: Lcom/android/OriginalSettings/LockPreview;->mTransAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/android/OriginalSettings/LockPreview;->access$100(Lcom/android/OriginalSettings/LockPreview;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    :cond_0
    return-void
.end method
