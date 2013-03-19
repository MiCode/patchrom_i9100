.class Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;
.super Ljava/lang/Object;
.source "TwGLItemThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
