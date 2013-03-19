.class Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;
.super Ljava/lang/Object;
.source "TwGLPostViewShrink.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->setAnimationStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x2

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    #getter for: Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    #getter for: Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->playAnimation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShrink;I)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
