.class Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;
.super Ljava/lang/Object;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
