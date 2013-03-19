.class Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;
.super Ljava/lang/Object;
.source "TwGLPostViewBlink.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->setAnimationStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    const v1, 0xffff

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    #getter for: Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    #getter for: Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->playAnimation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;I)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
