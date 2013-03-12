.class Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$2;->this$1:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$2;->this$1:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    #calls: Landroid/webkit/WebViewClassic;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;Landroid/sec/clipboard/data/ClipboardData;)V

    .line 1024
    return-void
.end method
