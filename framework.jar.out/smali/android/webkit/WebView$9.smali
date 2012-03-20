.class Landroid/webkit/WebView$9;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 4862
    iput-object p1, p0, Landroid/webkit/WebView$9;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4864
    iget-object v1, p0, Landroid/webkit/WebView$9;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4876
    :cond_0
    :goto_0
    return-void

    .line 4868
    :sswitch_0
    iget-object v1, p0, Landroid/webkit/WebView$9;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)Landroid/webkit/PointerDevice$TouchOptimizer;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/webkit/PointerDevice$TouchOptimizer;->onDraw(J)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4869
    .local v0, ev:Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 4872
    iget-object v1, p0, Landroid/webkit/WebView$9;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->_onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v1, v0}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    .line 4873
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 4864
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
