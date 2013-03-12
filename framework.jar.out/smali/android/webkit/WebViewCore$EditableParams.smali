.class public Landroid/webkit/WebViewCore$EditableParams;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditableParams"
.end annotation


# instance fields
.field composing:Z

.field content:Ljava/lang/String;

.field endOffset:I

.field newCursorPosition:I

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field startOffset:I

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 4554
    iput-object p1, p0, Landroid/webkit/WebViewCore$EditableParams;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
