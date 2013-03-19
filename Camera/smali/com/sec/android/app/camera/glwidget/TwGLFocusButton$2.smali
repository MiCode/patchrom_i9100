.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;
.super Ljava/lang/Object;
.source "TwGLFocusButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->aniRectShrink:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mFocus_Ani:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 310
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/16 v1, 0xa

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$502(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;I)I

    .line 316
    return-void
.end method
