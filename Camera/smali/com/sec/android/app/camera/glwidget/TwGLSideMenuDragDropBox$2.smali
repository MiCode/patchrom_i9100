.class Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;
.super Ljava/lang/Object;
.source "TwGLSideMenuDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V
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
    .line 230
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-interface {v0, v1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
