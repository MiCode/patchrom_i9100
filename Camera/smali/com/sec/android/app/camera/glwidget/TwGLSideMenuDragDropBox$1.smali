.class Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$1;
.super Ljava/lang/Object;
.source "TwGLSideMenuDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->resetClipRect()V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
