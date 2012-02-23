.class public Landroid/webkit/HtmlComposerView$TBHandler;
.super Landroid/os/Handler;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$TBHandler;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1531
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1536
    :goto_0
    return-void

    .line 1533
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$TBHandler;->this$0:Landroid/webkit/HtmlComposerView;

    sget v1, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
    .end packed-switch
.end method
