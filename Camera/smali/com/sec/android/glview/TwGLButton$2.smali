.class Lcom/sec/android/glview/TwGLButton$2;
.super Ljava/lang/Object;
.source "TwGLButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLButton;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton$2;->this$0:Lcom/sec/android/glview/TwGLButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$2;->this$0:Lcom/sec/android/glview/TwGLButton;

    iput-boolean v1, v0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 122
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$2;->this$0:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$2;->this$0:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    .line 125
    :cond_0
    return-void
.end method
