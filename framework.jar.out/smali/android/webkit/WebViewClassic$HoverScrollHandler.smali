.class Landroid/webkit/WebViewClassic$HoverScrollHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 8630
    iput-object p1, p0, Landroid/webkit/WebViewClassic$HoverScrollHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8630
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$HoverScrollHandler;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 8634
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 8642
    :goto_0
    return-void

    .line 8636
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$HoverScrollHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->doHoverScrollMove()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$4500(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 8634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
