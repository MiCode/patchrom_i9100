.class Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$1;->this$1:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl$1;->this$1:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 1015
    return-void
.end method
