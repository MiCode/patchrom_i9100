.class Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;
.super Ljava/lang/Object;
.source "TwGLPostViewShutter.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->setAnimationStep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAniProgress(Lcom/sec/android/glview/TwGLView;I)V
    .locals 2
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;

    const/4 v1, 0x2

    #calls: Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->playAnimation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V

    .line 146
    return-void
.end method
